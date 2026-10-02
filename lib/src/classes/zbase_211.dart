import 'zbase.dart';

class ZBase_211 extends ZBase {
  int _val;
  ZBase_211(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_211');
    return other is ZBase_211 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_211');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_211($_val)';

}
