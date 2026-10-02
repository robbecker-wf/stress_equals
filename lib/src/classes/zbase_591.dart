import 'zbase.dart';

class ZBase_591 extends ZBase {
  int _val;
  ZBase_591(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_591');
    return other is ZBase_591 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_591');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_591($_val)';

}
