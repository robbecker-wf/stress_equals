import 'package:stress_equals/src/classes.dart';

void main() {
  var s = <ZBase, bool>{};
  print('Creating classes and adding to a map');
  s[ZBase_0(0)] = false;
  s[ZBase_1(1)] = false;
  s[ZBase_2(2)] = false;
  s[ZBase_3(3)] = false;
  s[ZBase_4(4)] = false;
  s[ZBase_5(5)] = false;
  s[ZBase_6(6)] = false;
  s[ZBase_7(7)] = false;
  s[ZBase_8(8)] = false;
  s[ZBase_9(9)] = false;
  var keys = s.keys.toList();
  var zero = ZBase_9(9);
  print('Calling contains 9');
  if (keys.contains(zero)) {
    print('It contains a 9!');
  } else {
    print('No contains 9');
  }
  
  print('Getting an object from the map');
  print('retreived value for key $zero: ${s[zero]}');
  
  print('Calling equals on stuff');
  
  for (var i = 0; i < keys.length - 1; i++) {
    if (keys[i] == keys[i+1]) {
      print('${keys[i].runtimeType} and ${keys[i+1].runtimeType} are equal and should not be');
    }
  }
}
