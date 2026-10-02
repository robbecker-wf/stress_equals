import 'zbase.dart';

class ZBase_974 extends ZBase {
  int _val;
  ZBase_974(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_974');
    return other is ZBase_974 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_974');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_974($_val)';

}
