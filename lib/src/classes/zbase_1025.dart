import 'zbase.dart';

class ZBase_1025 extends ZBase {
  int _val;
  ZBase_1025(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1025');
    return other is ZBase_1025 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1025');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1025($_val)';

}
