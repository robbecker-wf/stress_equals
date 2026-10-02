import 'zbase.dart';

class ZBase_372 extends ZBase {
  int _val;
  ZBase_372(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_372');
    return other is ZBase_372 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_372');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_372($_val)';

}
