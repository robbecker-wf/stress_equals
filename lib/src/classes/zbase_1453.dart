import 'zbase.dart';

class ZBase_1453 extends ZBase {
  int _val;
  ZBase_1453(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1453');
    return other is ZBase_1453 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1453');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1453($_val)';

}
