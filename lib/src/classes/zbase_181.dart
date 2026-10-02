import 'zbase.dart';

class ZBase_181 extends ZBase {
  int _val;
  ZBase_181(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_181');
    return other is ZBase_181 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_181');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_181($_val)';

}
