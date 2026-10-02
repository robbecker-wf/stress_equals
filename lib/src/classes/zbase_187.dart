import 'zbase.dart';

class ZBase_187 extends ZBase {
  int _val;
  ZBase_187(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_187');
    return other is ZBase_187 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_187');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_187($_val)';

}
