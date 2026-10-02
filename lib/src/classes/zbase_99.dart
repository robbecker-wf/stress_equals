import 'zbase.dart';

class ZBase_99 extends ZBase {
  int _val;
  ZBase_99(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_99');
    return other is ZBase_99 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_99');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_99($_val)';

}
