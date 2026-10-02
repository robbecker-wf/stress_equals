import 'zbase.dart';

class ZBase_8 extends ZBase {
  int _val;
  ZBase_8(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_8');
    return other is ZBase_8 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_8');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_8($_val)';

}
