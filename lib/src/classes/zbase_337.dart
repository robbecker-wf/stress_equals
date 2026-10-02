import 'zbase.dart';

class ZBase_337 extends ZBase {
  int _val;
  ZBase_337(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_337');
    return other is ZBase_337 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_337');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_337($_val)';

}
