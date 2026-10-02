import 'zbase.dart';

class ZBase_1975 extends ZBase {
  int _val;
  ZBase_1975(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1975');
    return other is ZBase_1975 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1975');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1975($_val)';

}
