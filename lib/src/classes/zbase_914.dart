import 'zbase.dart';

class ZBase_914 extends ZBase {
  int _val;
  ZBase_914(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_914');
    return other is ZBase_914 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_914');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_914($_val)';

}
