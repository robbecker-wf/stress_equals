import 'zbase.dart';

class ZBase_22 extends ZBase {
  int _val;
  ZBase_22(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_22');
    return other is ZBase_22 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_22');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_22($_val)';

}
