import 'zbase.dart';

class ZBase_3245 extends ZBase {
  int _val;
  ZBase_3245(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3245');
    return other is ZBase_3245 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3245');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3245($_val)';

}
