import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadSpacer({@required HydroState luaState, @required HydroTable table}) {
  table["spacer"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Spacer(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        flex: args[0]["flex"],
      )
    ];
  });
}
