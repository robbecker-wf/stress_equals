import 'zbase.dart';

class ZBase_292 extends ZBase {
  int _val;
  ZBase_292(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_292');
    return other is ZBase_292 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_292');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_292($_val)';

}
