import 'zbase.dart';

class ZBase_312 extends ZBase {
  int _val;
  ZBase_312(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_312');
    return other is ZBase_312 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_312');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_312($_val)';

}
