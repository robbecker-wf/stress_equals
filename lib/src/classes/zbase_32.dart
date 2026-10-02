import 'zbase.dart';

class ZBase_32 extends ZBase {
  int _val;
  ZBase_32(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_32');
    return other is ZBase_32 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_32');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_32($_val)';

}
