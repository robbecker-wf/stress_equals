import 'zbase.dart';

class ZBase_64 extends ZBase {
  int _val;
  ZBase_64(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_64');
    return other is ZBase_64 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_64');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_64($_val)';

}
