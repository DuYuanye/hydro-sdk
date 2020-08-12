import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/hotReloadable.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/preloadCustomNamespaces.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

void _rebuildAllChildren(BuildContext context) {
  void rebuild(Element el) {
    el.markNeedsBuild();
    el.visitChildren(rebuild);
  }

  (context as Element).visitChildren(rebuild);
}

class RunFromNetwork extends StatefulWidget {
  final String baseUrl;
  final String filePath;
  final List<dynamic> args;
  final Map<String, NativeThunk> thunks;
  final Future<String> Function(String) downloadHash;
  final Future<Uint8List> Function(String) downloadByteCodeImage;
  final Future<List<ModuleDebugInfo>> Function(String) downloadDebugInfo;
  final List<CustomNamespaceLoader> customNamespaces;

  RunFromNetwork({
    @required this.baseUrl,
    @required this.filePath,
    @required this.args,
    @required this.thunks,
    this.downloadHash,
    this.downloadByteCodeImage,
    this.downloadDebugInfo,
    this.customNamespaces,
  });

  @override
  _RunFromNetwork createState() => _RunFromNetwork(
        baseUrl: baseUrl,
        filePath: filePath,
        args: args,
        thunks: thunks,
        downloadHash: downloadHash,
        downloadByteCodeImage: downloadByteCodeImage,
        downloadDebugInfo: downloadDebugInfo,
        customNamespaces: customNamespaces,
      );
}

class _RunFromNetwork extends State<RunFromNetwork>
    with HotReloadable, PreloadableCustomNamespaces {
  final String baseUrl;
  final String filePath;
  final List<dynamic> args;
  final Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
      thunks;

  Timer timer;
  bool requiresRebuild = false;

  Future<String> Function(String) downloadHash;
  Future<Uint8List> Function(String) downloadByteCodeImage;
  Future<List<ModuleDebugInfo>> Function(String) downloadDebugInfo;

  String _debugUrl;

  _RunFromNetwork({
    @required this.baseUrl,
    @required this.filePath,
    @required this.args,
    @required this.thunks,
    this.downloadHash,
    this.downloadByteCodeImage,
    this.downloadDebugInfo,
    List<CustomNamespaceLoader> customNamespaces,
  }) {
    customNamespaceLoaders = customNamespaces;
    _debugUrl = kDebugMode && Platform.isAndroid
        ? "http://10.0.2.2:5000"
        : kDebugMode && Platform.isIOS ? "http://localhost:5000" : "";

    Future<Response> _attemptDownloadWithDegradation(String uri) async {
      if (_debugUrl != "") {
        try {
          return await get("$_debugUrl/$uri");
        } catch (err) {}
      }
      try {
        return await get("$baseUrl/$uri");
      } catch (err) {
        print(err);
      }

      return null;
    }

    if (downloadHash == null) {
      downloadHash = (String uri) async {
        try {
          var res = await _attemptDownloadWithDegradation(uri);
          if (res.statusCode == 200) {
            return res.body;
          }
        } catch (err) {
          print(err);
        }

        return null;
      };
    }

    if (downloadByteCodeImage == null) {
      downloadByteCodeImage = (String uri) async {
        try {
          var res = await _attemptDownloadWithDegradation(uri);
          return res.bodyBytes;
        } catch (err) {
          print(err);
          return null;
        }
      };
    }

    if (downloadDebugInfo == null) {
      downloadDebugInfo = (String uri) async {
        if (_debugUrl != "") {
          try {
            var res = await _attemptDownloadWithDegradation(uri);
            if (res?.statusCode == 200) {
              return json
                  .decode(res.body)
                  ?.map((x) => ModuleDebugInfo.fromJson(x))
                  ?.toList()
                  ?.cast<ModuleDebugInfo>();
            }
          } catch (err) {
            print(err);
          }
        }

        return null;
      };
    }

    maybeReload();
    timer = Timer.periodic(
        kDebugMode ? Duration(milliseconds: 500) : Duration(hours: 10),
        (Timer timer) {
      maybeReload();
    });
  }

  Future<void> maybeReload() async {
    String newHash = await downloadHash("$filePath.sha256");
    if (newHash != null && newHash != lastHash) {
      var image = await downloadByteCodeImage("$filePath");
      List<ModuleDebugInfo> symbols;
      if (kDebugMode) {
        symbols = await downloadDebugInfo("$filePath.symbols");
      }
      if (image != null) {
        setState(() {
          lastHash = newHash;
        });

        //First time load
        if (res == null) {
          await fullRestart(
              bytecodeImage: image,
              baseUrl: baseUrl,
              symbols: symbols,
              thunks: thunks);
        } else {
          var status = await hotReload(
              bytecodeImage: image,
              baseUrl: baseUrl,
              symbols: symbols,
              thunks: thunks);
          if (!status) {
            await fullRestart(
                bytecodeImage: image,
                baseUrl: baseUrl,
                symbols: symbols,
                thunks: thunks);
          }
          setState(() {
            requiresRebuild = true;
          });
        }

        return;
      }
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (res == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      if (requiresRebuild) {
        Future.delayed(Duration(seconds: 1)).then((val) {
          _rebuildAllChildren(context);
          Future.delayed(Duration(seconds: 1)).then((val) {
            _rebuildAllChildren(context);
            Future.delayed(Duration(seconds: 1)).then((val) {
              _rebuildAllChildren(context);
            });
          });
        });
        setState(() {
          requiresRebuild = false;
        });
      }

      if (!res.success) {
        print(res.values[0]);
      }

      return maybeUnBoxAndBuildArgument<Widget>(
          luaState.context.env["hydro"]["globalBuildResult"].dispatch(
              args != null ? [...args] : [],
              parentState: luaState)[0],
          parentState: luaState);
    }
  }
}
