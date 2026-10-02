import 'zbase.dart';

class ZBase_463 extends ZBase {
  int _val;
  ZBase_463(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_463');
    return other is ZBase_463 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_463');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_463($_val)';

}
