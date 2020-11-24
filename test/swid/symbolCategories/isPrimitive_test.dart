import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/isPrimitive.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/IconData.json").readAsStringSync()));

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        isPrimitive(swidType: SwidType.fromSwidClass(swidClass: iconDataClass)),
        false);
    expect(
        isPrimitive(
            swidType: iconDataClass.constructorType.normalParameterTypes[0]),
        true);

    iconDataClass.constructorType.namedParameterTypes.forEach((key, value) {
      expect(isPrimitive(swidType: value), true);
    });
  }, tags: "swid");
}
