import 'zbase.dart';

class ZBase_1045 extends ZBase {
  int _val;
  ZBase_1045(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1045');
    return other is ZBase_1045 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1045');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1045($_val)';

}
