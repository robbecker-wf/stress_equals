import 'zbase.dart';

class ZBase_946 extends ZBase {
  int _val;
  ZBase_946(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_946');
    return other is ZBase_946 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_946');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_946($_val)';

}
