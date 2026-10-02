import 'zbase.dart';

class ZBase_433 extends ZBase {
  int _val;
  ZBase_433(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_433');
    return other is ZBase_433 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_433');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_433($_val)';

}
