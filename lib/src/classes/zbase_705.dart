import 'zbase.dart';

class ZBase_705 extends ZBase {
  int _val;
  ZBase_705(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_705');
    return other is ZBase_705 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_705');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_705($_val)';

}
