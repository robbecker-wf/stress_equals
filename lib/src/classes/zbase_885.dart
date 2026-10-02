import 'zbase.dart';

class ZBase_885 extends ZBase {
  int _val;
  ZBase_885(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_885');
    return other is ZBase_885 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_885');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_885($_val)';

}
