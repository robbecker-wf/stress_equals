import 'zbase.dart';

class ZBase_743 extends ZBase {
  int _val;
  ZBase_743(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_743');
    return other is ZBase_743 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_743');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_743($_val)';

}
