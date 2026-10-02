import 'zbase.dart';

class ZBase_283 extends ZBase {
  int _val;
  ZBase_283(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_283');
    return other is ZBase_283 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_283');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_283($_val)';

}
