import 'zbase.dart';

class ZBase_171 extends ZBase {
  int _val;
  ZBase_171(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_171');
    return other is ZBase_171 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_171');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_171($_val)';

}
