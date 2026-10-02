import 'zbase.dart';

class ZBase_1996 extends ZBase {
  int _val;
  ZBase_1996(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1996');
    return other is ZBase_1996 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1996');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1996($_val)';

}
