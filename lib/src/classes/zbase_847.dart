import 'zbase.dart';

class ZBase_847 extends ZBase {
  int _val;
  ZBase_847(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_847');
    return other is ZBase_847 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_847');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_847($_val)';

}
