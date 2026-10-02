import 'zbase.dart';

class ZBase_114 extends ZBase {
  int _val;
  ZBase_114(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_114');
    return other is ZBase_114 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_114');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_114($_val)';

}
