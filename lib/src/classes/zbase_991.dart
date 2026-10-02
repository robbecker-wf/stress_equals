import 'zbase.dart';

class ZBase_991 extends ZBase {
  int _val;
  ZBase_991(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_991');
    return other is ZBase_991 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_991');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_991($_val)';

}
