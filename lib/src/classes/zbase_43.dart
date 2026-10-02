import 'zbase.dart';

class ZBase_43 extends ZBase {
  int _val;
  ZBase_43(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_43');
    return other is ZBase_43 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_43');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_43($_val)';

}
