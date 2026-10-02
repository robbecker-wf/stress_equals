import 'zbase.dart';

class ZBase_2922 extends ZBase {
  int _val;
  ZBase_2922(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2922');
    return other is ZBase_2922 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2922');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2922($_val)';

}
