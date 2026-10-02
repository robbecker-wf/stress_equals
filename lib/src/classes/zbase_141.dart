import 'zbase.dart';

class ZBase_141 extends ZBase {
  int _val;
  ZBase_141(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_141');
    return other is ZBase_141 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_141');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_141($_val)';

}
