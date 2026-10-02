import 'zbase.dart';

class ZBase_979 extends ZBase {
  int _val;
  ZBase_979(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_979');
    return other is ZBase_979 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_979');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_979($_val)';

}
