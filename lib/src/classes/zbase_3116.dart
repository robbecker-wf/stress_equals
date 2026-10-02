import 'zbase.dart';

class ZBase_3116 extends ZBase {
  int _val;
  ZBase_3116(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3116');
    return other is ZBase_3116 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3116');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3116($_val)';

}
