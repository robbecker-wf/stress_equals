import 'zbase.dart';

class ZBase_1777 extends ZBase {
  int _val;
  ZBase_1777(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1777');
    return other is ZBase_1777 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1777');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1777($_val)';

}
