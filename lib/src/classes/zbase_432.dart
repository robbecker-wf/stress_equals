import 'zbase.dart';

class ZBase_432 extends ZBase {
  int _val;
  ZBase_432(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_432');
    return other is ZBase_432 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_432');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_432($_val)';

}
