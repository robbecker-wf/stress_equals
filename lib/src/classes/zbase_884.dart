import 'zbase.dart';

class ZBase_884 extends ZBase {
  int _val;
  ZBase_884(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_884');
    return other is ZBase_884 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_884');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_884($_val)';

}
