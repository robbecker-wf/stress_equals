import 'zbase.dart';

class ZBase_88 extends ZBase {
  int _val;
  ZBase_88(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_88');
    return other is ZBase_88 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_88');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_88($_val)';

}
