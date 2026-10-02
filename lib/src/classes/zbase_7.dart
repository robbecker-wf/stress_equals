import 'zbase.dart';

class ZBase_7 extends ZBase {
  int _val;
  ZBase_7(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_7');
    return other is ZBase_7 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_7');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_7($_val)';

}
