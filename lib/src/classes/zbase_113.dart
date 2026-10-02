import 'zbase.dart';

class ZBase_113 extends ZBase {
  int _val;
  ZBase_113(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_113');
    return other is ZBase_113 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_113');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_113($_val)';

}
