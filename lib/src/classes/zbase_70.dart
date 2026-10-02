import 'zbase.dart';

class ZBase_70 extends ZBase {
  int _val;
  ZBase_70(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_70');
    return other is ZBase_70 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_70');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_70($_val)';

}
