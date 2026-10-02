import 'zbase.dart';

class ZBase_388 extends ZBase {
  int _val;
  ZBase_388(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_388');
    return other is ZBase_388 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_388');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_388($_val)';

}
