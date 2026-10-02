import 'zbase.dart';

class ZBase_205 extends ZBase {
  int _val;
  ZBase_205(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_205');
    return other is ZBase_205 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_205');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_205($_val)';

}
