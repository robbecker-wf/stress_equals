import 'zbase.dart';

class ZBase_869 extends ZBase {
  int _val;
  ZBase_869(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_869');
    return other is ZBase_869 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_869');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_869($_val)';

}
