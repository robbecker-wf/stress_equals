import 'zbase.dart';

class ZBase_1819 extends ZBase {
  int _val;
  ZBase_1819(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1819');
    return other is ZBase_1819 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1819');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1819($_val)';

}
