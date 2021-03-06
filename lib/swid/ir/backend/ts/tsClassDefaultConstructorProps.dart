import 'package:hydro_sdk/swid/ir/backend/ts/tsClassDefaultConstructorPropsObjectName.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';

class TsClassDefaultConstructorProps {
  final SwidClass swidClass;

  TsClassDefaultConstructorProps({@required this.swidClass});

  String toTsSource() => swidClass.constructorType.namedDefaults.isNotEmpty
      ? "const ${TsClassDefaultConstructorPropsObjectName(swidClass: swidClass).toTsSource()} = {\n" +
          swidClass.constructorType.namedDefaults.entries
              .map((x) =>
                  "    ${x.key}: " +
                  "${transformTypeDeclarationToTs(swidType: SwidType.fromSwidDefaultFormalParameter(swidDefaultFormalParameter: x.value))},\n")
              ?.toList()
              ?.join("\n") +
          "};\n"
      : "";
}
