import 'zbase.dart';

class ZBase_486 extends ZBase {
  int _val;
  ZBase_486(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_486');
    return other is ZBase_486 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_486');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_486($_val)';

}
