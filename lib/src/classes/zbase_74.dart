import 'zbase.dart';

class ZBase_74 extends ZBase {
  int _val;
  ZBase_74(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_74');
    return other is ZBase_74 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_74');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_74($_val)';

}
