import 'zbase.dart';

class ZBase_3561 extends ZBase {
  int _val;
  ZBase_3561(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3561');
    return other is ZBase_3561 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3561');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3561($_val)';

}
