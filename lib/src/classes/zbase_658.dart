import 'zbase.dart';

class ZBase_658 extends ZBase {
  int _val;
  ZBase_658(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_658');
    return other is ZBase_658 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_658');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_658($_val)';

}
