import 'zbase.dart';

class ZBase_3327 extends ZBase {
  int _val;
  ZBase_3327(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3327');
    return other is ZBase_3327 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3327');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3327($_val)';

}
