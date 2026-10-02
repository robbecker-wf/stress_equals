import 'zbase.dart';

class ZBase_387 extends ZBase {
  int _val;
  ZBase_387(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_387');
    return other is ZBase_387 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_387');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_387($_val)';

}
