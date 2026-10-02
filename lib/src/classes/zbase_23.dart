import 'zbase.dart';

class ZBase_23 extends ZBase {
  int _val;
  ZBase_23(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_23');
    return other is ZBase_23 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_23');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_23($_val)';

}
