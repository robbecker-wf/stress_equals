import 'zbase.dart';

class ZBase_544 extends ZBase {
  int _val;
  ZBase_544(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_544');
    return other is ZBase_544 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_544');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_544($_val)';

}
