import 'zbase.dart';

class ZBase_1802 extends ZBase {
  int _val;
  ZBase_1802(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1802');
    return other is ZBase_1802 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1802');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1802($_val)';

}
