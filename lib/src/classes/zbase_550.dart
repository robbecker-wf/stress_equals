import 'zbase.dart';

class ZBase_550 extends ZBase {
  int _val;
  ZBase_550(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_550');
    return other is ZBase_550 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_550');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_550($_val)';

}
