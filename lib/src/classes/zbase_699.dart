import 'zbase.dart';

class ZBase_699 extends ZBase {
  int _val;
  ZBase_699(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_699');
    return other is ZBase_699 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_699');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_699($_val)';

}
