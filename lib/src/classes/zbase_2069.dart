import 'zbase.dart';

class ZBase_2069 extends ZBase {
  int _val;
  ZBase_2069(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2069');
    return other is ZBase_2069 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2069');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2069($_val)';

}
