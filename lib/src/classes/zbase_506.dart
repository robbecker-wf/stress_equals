import 'zbase.dart';

class ZBase_506 extends ZBase {
  int _val;
  ZBase_506(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_506');
    return other is ZBase_506 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_506');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_506($_val)';

}
