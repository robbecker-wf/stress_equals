import 'zbase.dart';

class ZBase_1346 extends ZBase {
  int _val;
  ZBase_1346(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1346');
    return other is ZBase_1346 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1346');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1346($_val)';

}
