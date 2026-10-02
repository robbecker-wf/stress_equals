import 'zbase.dart';

class ZBase_3578 extends ZBase {
  int _val;
  ZBase_3578(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3578');
    return other is ZBase_3578 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3578');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3578($_val)';

}
