import 'zbase.dart';

class ZBase_3525 extends ZBase {
  int _val;
  ZBase_3525(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3525');
    return other is ZBase_3525 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3525');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3525($_val)';

}
