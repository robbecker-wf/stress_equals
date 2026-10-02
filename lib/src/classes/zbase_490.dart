import 'zbase.dart';

class ZBase_490 extends ZBase {
  int _val;
  ZBase_490(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_490');
    return other is ZBase_490 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_490');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_490($_val)';

}
