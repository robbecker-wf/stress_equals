import 'zbase.dart';

class ZBase_3378 extends ZBase {
  int _val;
  ZBase_3378(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3378');
    return other is ZBase_3378 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3378');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3378($_val)';

}
