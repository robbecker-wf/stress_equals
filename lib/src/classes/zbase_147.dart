import 'zbase.dart';

class ZBase_147 extends ZBase {
  int _val;
  ZBase_147(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_147');
    return other is ZBase_147 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_147');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_147($_val)';

}
