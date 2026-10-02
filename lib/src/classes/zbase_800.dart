import 'zbase.dart';

class ZBase_800 extends ZBase {
  int _val;
  ZBase_800(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_800');
    return other is ZBase_800 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_800');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_800($_val)';

}
