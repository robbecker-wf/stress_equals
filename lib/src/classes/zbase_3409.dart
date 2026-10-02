import 'zbase.dart';

class ZBase_3409 extends ZBase {
  int _val;
  ZBase_3409(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3409');
    return other is ZBase_3409 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3409');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3409($_val)';

}
