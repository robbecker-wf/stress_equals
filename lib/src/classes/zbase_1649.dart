import 'zbase.dart';

class ZBase_1649 extends ZBase {
  int _val;
  ZBase_1649(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1649');
    return other is ZBase_1649 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1649');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1649($_val)';

}
