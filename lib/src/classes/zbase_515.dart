import 'zbase.dart';

class ZBase_515 extends ZBase {
  int _val;
  ZBase_515(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_515');
    return other is ZBase_515 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_515');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_515($_val)';

}
