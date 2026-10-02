import 'zbase.dart';

class ZBase_751 extends ZBase {
  int _val;
  ZBase_751(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_751');
    return other is ZBase_751 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_751');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_751($_val)';

}
