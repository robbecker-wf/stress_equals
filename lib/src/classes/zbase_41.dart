import 'zbase.dart';

class ZBase_41 extends ZBase {
  int _val;
  ZBase_41(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_41');
    return other is ZBase_41 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_41');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_41($_val)';

}
