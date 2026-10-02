import 'zbase.dart';

class ZBase_1121 extends ZBase {
  int _val;
  ZBase_1121(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1121');
    return other is ZBase_1121 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1121');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1121($_val)';

}
