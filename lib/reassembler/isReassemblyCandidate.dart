import 'package:hydro_sdk/vm/prototype.dart';

bool isReassemblyCandidate(Prototype a, Prototype b) {
  if (a.lineStart == b.lineStart) {
    return true;
  }
  return false;
}
