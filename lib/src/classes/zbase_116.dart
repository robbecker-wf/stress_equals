import 'zbase.dart';

class ZBase_116 extends ZBase {
  int _val;
  ZBase_116(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_116');
    return other is ZBase_116 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_116');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_116($_val)';

}
