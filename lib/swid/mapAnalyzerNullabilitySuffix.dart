import 'package:meta/meta.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:hydro_sdk/swid/swidNullabilitySuffix.dart';

SwidNullabilitySuffix mapNullabilitySuffix(
    {@required NullabilitySuffix nullabilitySuffix}) {
  return nullabilitySuffix == NullabilitySuffix.question
      ? SwidNullabilitySuffix.question
      : nullabilitySuffix == NullabilitySuffix.star
          ? SwidNullabilitySuffix.star
          : nullabilitySuffix == NullabilitySuffix.none
              ? SwidNullabilitySuffix.none
              : null;
}
