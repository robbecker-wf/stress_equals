import 'zbase.dart';

class ZBase_121 extends ZBase {
  int _val;
  ZBase_121(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_121');
    return other is ZBase_121 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_121');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_121($_val)';

}
