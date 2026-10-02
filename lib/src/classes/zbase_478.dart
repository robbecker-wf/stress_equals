import 'zbase.dart';

class ZBase_478 extends ZBase {
  int _val;
  ZBase_478(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_478');
    return other is ZBase_478 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_478');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_478($_val)';

}
