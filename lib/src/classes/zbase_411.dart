import 'zbase.dart';

class ZBase_411 extends ZBase {
  int _val;
  ZBase_411(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_411');
    return other is ZBase_411 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_411');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_411($_val)';

}
