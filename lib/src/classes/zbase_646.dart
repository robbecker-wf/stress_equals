import 'zbase.dart';

class ZBase_646 extends ZBase {
  int _val;
  ZBase_646(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_646');
    return other is ZBase_646 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_646');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_646($_val)';

}
