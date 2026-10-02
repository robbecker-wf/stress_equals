import 'zbase.dart';

class ZBase_1720 extends ZBase {
  int _val;
  ZBase_1720(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1720');
    return other is ZBase_1720 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1720');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1720($_val)';

}
