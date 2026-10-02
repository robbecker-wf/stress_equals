import 'zbase.dart';

class ZBase_747 extends ZBase {
  int _val;
  ZBase_747(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_747');
    return other is ZBase_747 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_747');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_747($_val)';

}
