import 'zbase.dart';

class ZBase_1497 extends ZBase {
  int _val;
  ZBase_1497(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1497');
    return other is ZBase_1497 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1497');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1497($_val)';

}
