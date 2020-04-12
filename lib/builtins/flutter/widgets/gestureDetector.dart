import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/vm/closure.dart';
import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadGestureDetector({@required HydroState luaState, @required HydroTable table}) {
  table["gestureDetector"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      GestureDetector(
        behavior: HitTestBehavior.values
            .firstWhere((x) => x.index == args[0]["behavior"]),
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
        onTap: () {
          Closure closure = args[0]["onTap"];
          closure.dispatch([], parentState: luaState);
        },
      )
    ];
  });
}
