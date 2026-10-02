import 'zbase.dart';

class ZBase_428 extends ZBase {
  int _val;
  ZBase_428(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_428');
    return other is ZBase_428 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_428');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_428($_val)';

}
