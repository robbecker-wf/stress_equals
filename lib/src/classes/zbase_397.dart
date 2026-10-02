import 'zbase.dart';

class ZBase_397 extends ZBase {
  int _val;
  ZBase_397(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_397');
    return other is ZBase_397 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_397');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_397($_val)';

}
