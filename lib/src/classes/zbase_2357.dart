import 'zbase.dart';

class ZBase_2357 extends ZBase {
  int _val;
  ZBase_2357(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2357');
    return other is ZBase_2357 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2357');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2357($_val)';

}
