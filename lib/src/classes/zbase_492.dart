import 'zbase.dart';

class ZBase_492 extends ZBase {
  int _val;
  ZBase_492(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_492');
    return other is ZBase_492 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_492');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_492($_val)';

}
