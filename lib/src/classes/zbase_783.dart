import 'zbase.dart';

class ZBase_783 extends ZBase {
  int _val;
  ZBase_783(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_783');
    return other is ZBase_783 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_783');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_783($_val)';

}
