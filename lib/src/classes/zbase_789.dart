import 'zbase.dart';

class ZBase_789 extends ZBase {
  int _val;
  ZBase_789(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_789');
    return other is ZBase_789 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_789');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_789($_val)';

}
