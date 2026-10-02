import 'zbase.dart';

class ZBase_543 extends ZBase {
  int _val;
  ZBase_543(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_543');
    return other is ZBase_543 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_543');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_543($_val)';

}
