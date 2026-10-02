import 'zbase.dart';

class ZBase_106 extends ZBase {
  int _val;
  ZBase_106(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_106');
    return other is ZBase_106 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_106');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_106($_val)';

}
