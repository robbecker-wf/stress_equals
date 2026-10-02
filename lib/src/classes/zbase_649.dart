import 'zbase.dart';

class ZBase_649 extends ZBase {
  int _val;
  ZBase_649(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_649');
    return other is ZBase_649 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_649');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_649($_val)';

}
