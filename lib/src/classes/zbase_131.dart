import 'zbase.dart';

class ZBase_131 extends ZBase {
  int _val;
  ZBase_131(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_131');
    return other is ZBase_131 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_131');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_131($_val)';

}
