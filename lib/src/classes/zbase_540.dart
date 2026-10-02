import 'zbase.dart';

class ZBase_540 extends ZBase {
  int _val;
  ZBase_540(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_540');
    return other is ZBase_540 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_540');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_540($_val)';

}
