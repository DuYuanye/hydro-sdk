import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("test/swid/res/IconData.json").readAsStringSync()));

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(TsClassVmDeclaration(swidClass: iconDataClass).toTsSource(), """
declare const flutter: {
widgets: {
iconData: (this : void, codePoint : number, props : { fontFamily : string, fontPackage : string, matchTextDirection : boolean, }) => IconData
}
}""");
  });
}
