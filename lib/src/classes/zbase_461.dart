import 'zbase.dart';

class ZBase_461 extends ZBase {
  int _val;
  ZBase_461(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_461');
    return other is ZBase_461 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_461');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_461($_val)';

}
