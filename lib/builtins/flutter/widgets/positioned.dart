import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadPositioned({@required HydroState luaState, @required HydroTable table}) {
  table["positioned"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Positioned(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        left: args[0]["left"] != null ? args[0]["left"].toDouble() : null,
        top: args[0]["top"] != null ? args[0]["top"].toDouble() : null,
        right: args[0]["right"] != null ? args[0]["right"].toDouble() : null,
        bottom: args[0]["bottom"] != null ? args[0]["bottom"].toDouble() : null,
        width: args[0]["width"] != null ? args[0]["width"].toDouble() : null,
        height: args[0]["height"] != null ? args[0]["height"].toDouble() : null,
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
