import 'zbase.dart';

class ZBase_525 extends ZBase {
  int _val;
  ZBase_525(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_525');
    return other is ZBase_525 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_525');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_525($_val)';

}
