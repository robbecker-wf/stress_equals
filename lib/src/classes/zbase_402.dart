import 'zbase.dart';

class ZBase_402 extends ZBase {
  int _val;
  ZBase_402(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_402');
    return other is ZBase_402 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_402');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_402($_val)';

}
