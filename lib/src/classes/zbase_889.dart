import 'zbase.dart';

class ZBase_889 extends ZBase {
  int _val;
  ZBase_889(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_889');
    return other is ZBase_889 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_889');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_889($_val)';

}
