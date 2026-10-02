import 'zbase.dart';

class ZBase_1963 extends ZBase {
  int _val;
  ZBase_1963(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1963');
    return other is ZBase_1963 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1963');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1963($_val)';

}
