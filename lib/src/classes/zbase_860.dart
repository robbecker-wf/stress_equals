import 'zbase.dart';

class ZBase_860 extends ZBase {
  int _val;
  ZBase_860(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_860');
    return other is ZBase_860 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_860');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_860($_val)';

}
