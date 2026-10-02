import 'zbase.dart';

class ZBase_198 extends ZBase {
  int _val;
  ZBase_198(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_198');
    return other is ZBase_198 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_198');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_198($_val)';

}
