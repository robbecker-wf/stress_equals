import 'zbase.dart';

class ZBase_338 extends ZBase {
  int _val;
  ZBase_338(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_338');
    return other is ZBase_338 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_338');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_338($_val)';

}
