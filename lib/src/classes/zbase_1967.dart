import 'zbase.dart';

class ZBase_1967 extends ZBase {
  int _val;
  ZBase_1967(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1967');
    return other is ZBase_1967 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1967');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1967($_val)';

}
