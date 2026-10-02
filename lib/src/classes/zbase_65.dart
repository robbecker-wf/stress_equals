import 'zbase.dart';

class ZBase_65 extends ZBase {
  int _val;
  ZBase_65(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_65');
    return other is ZBase_65 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_65');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_65($_val)';

}
