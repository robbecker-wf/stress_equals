import 'zbase.dart';

class ZBase_261 extends ZBase {
  int _val;
  ZBase_261(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_261');
    return other is ZBase_261 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_261');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_261($_val)';

}
