import 'zbase.dart';

class ZBase_964 extends ZBase {
  int _val;
  ZBase_964(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_964');
    return other is ZBase_964 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_964');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_964($_val)';

}
