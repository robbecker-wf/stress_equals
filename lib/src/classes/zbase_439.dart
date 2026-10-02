import 'zbase.dart';

class ZBase_439 extends ZBase {
  int _val;
  ZBase_439(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_439');
    return other is ZBase_439 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_439');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_439($_val)';

}
