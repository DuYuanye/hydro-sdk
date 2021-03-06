import 'package:hydro_sdk/swid/ir/frontend/dart/swidEnum.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformEnumToTs.dart';
import 'package:meta/meta.dart';

class TsEnum {
  final SwidEnum swidEnum;

  TsEnum({@required this.swidEnum});

  String toTsSource() => transformEnumToTs(swidEnum: swidEnum);
}
