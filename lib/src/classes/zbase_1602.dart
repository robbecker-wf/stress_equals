import 'zbase.dart';

class ZBase_1602 extends ZBase {
  int _val;
  ZBase_1602(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1602');
    return other is ZBase_1602 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1602');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1602($_val)';

}
