import 'zbase.dart';

class ZBase_321 extends ZBase {
  int _val;
  ZBase_321(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_321');
    return other is ZBase_321 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_321');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_321($_val)';

}
