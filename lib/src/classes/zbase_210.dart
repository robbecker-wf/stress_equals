import 'zbase.dart';

class ZBase_210 extends ZBase {
  int _val;
  ZBase_210(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_210');
    return other is ZBase_210 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_210');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_210($_val)';

}
