import 'zbase.dart';

class ZBase_192 extends ZBase {
  int _val;
  ZBase_192(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_192');
    return other is ZBase_192 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_192');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_192($_val)';

}
