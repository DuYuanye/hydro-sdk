import 'package:hydro_sdk/swid/ir/frontend/dart/swidBooleanLiteral.dart';
import 'package:meta/meta.dart';

String transformBooleanLiteralToTs(
        {@required SwidBooleanLiteral swidBooleanLiteral}) =>
    swidBooleanLiteral.value;
