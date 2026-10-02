import 'zbase.dart';

class ZBase_1520 extends ZBase {
  int _val;
  ZBase_1520(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1520');
    return other is ZBase_1520 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1520');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1520($_val)';

}
