import 'zbase.dart';

class ZBase_954 extends ZBase {
  int _val;
  ZBase_954(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_954');
    return other is ZBase_954 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_954');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_954($_val)';

}
