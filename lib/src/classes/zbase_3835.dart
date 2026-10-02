import 'zbase.dart';

class ZBase_3835 extends ZBase {
  int _val;
  ZBase_3835(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3835');
    return other is ZBase_3835 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3835');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3835($_val)';

}
