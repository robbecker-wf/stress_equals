import 'zbase.dart';

class ZBase_6 extends ZBase {
  int _val;
  ZBase_6(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_6');
    return other is ZBase_6 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_6');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_6($_val)';

}
