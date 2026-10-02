import 'zbase.dart';

class ZBase_3945 extends ZBase {
  int _val;
  ZBase_3945(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3945');
    return other is ZBase_3945 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3945');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3945($_val)';

}
