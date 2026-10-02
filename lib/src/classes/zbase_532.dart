import 'zbase.dart';

class ZBase_532 extends ZBase {
  int _val;
  ZBase_532(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_532');
    return other is ZBase_532 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_532');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_532($_val)';

}
