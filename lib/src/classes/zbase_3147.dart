import 'zbase.dart';

class ZBase_3147 extends ZBase {
  int _val;
  ZBase_3147(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3147');
    return other is ZBase_3147 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3147');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3147($_val)';

}
