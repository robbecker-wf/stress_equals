import 'zbase.dart';

class ZBase_575 extends ZBase {
  int _val;
  ZBase_575(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_575');
    return other is ZBase_575 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_575');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_575($_val)';

}
