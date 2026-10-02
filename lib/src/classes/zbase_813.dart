import 'zbase.dart';

class ZBase_813 extends ZBase {
  int _val;
  ZBase_813(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_813');
    return other is ZBase_813 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_813');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_813($_val)';

}
