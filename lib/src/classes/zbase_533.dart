import 'zbase.dart';

class ZBase_533 extends ZBase {
  int _val;
  ZBase_533(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_533');
    return other is ZBase_533 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_533');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_533($_val)';

}
