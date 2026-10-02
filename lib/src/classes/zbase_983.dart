import 'zbase.dart';

class ZBase_983 extends ZBase {
  int _val;
  ZBase_983(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_983');
    return other is ZBase_983 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_983');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_983($_val)';

}
