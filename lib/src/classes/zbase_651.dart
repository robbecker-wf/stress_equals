import 'zbase.dart';

class ZBase_651 extends ZBase {
  int _val;
  ZBase_651(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_651');
    return other is ZBase_651 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_651');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_651($_val)';

}
