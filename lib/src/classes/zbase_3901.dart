import 'zbase.dart';

class ZBase_3901 extends ZBase {
  int _val;
  ZBase_3901(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3901');
    return other is ZBase_3901 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3901');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3901($_val)';

}
