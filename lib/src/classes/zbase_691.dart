import 'zbase.dart';

class ZBase_691 extends ZBase {
  int _val;
  ZBase_691(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_691');
    return other is ZBase_691 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_691');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_691($_val)';

}
