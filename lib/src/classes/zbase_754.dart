import 'zbase.dart';

class ZBase_754 extends ZBase {
  int _val;
  ZBase_754(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_754');
    return other is ZBase_754 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_754');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_754($_val)';

}
