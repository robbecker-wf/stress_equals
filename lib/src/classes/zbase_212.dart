import 'zbase.dart';

class ZBase_212 extends ZBase {
  int _val;
  ZBase_212(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_212');
    return other is ZBase_212 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_212');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_212($_val)';

}
