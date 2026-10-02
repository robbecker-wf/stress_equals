import 'zbase.dart';

class ZBase_281 extends ZBase {
  int _val;
  ZBase_281(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_281');
    return other is ZBase_281 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_281');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_281($_val)';

}
