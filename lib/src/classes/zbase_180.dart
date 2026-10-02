import 'zbase.dart';

class ZBase_180 extends ZBase {
  int _val;
  ZBase_180(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_180');
    return other is ZBase_180 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_180');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_180($_val)';

}
