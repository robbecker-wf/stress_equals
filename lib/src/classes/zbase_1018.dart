import 'zbase.dart';

class ZBase_1018 extends ZBase {
  int _val;
  ZBase_1018(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1018');
    return other is ZBase_1018 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1018');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1018($_val)';

}
