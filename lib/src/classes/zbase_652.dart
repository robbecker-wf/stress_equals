import 'zbase.dart';

class ZBase_652 extends ZBase {
  int _val;
  ZBase_652(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_652');
    return other is ZBase_652 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_652');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_652($_val)';

}
