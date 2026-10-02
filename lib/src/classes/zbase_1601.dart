import 'zbase.dart';

class ZBase_1601 extends ZBase {
  int _val;
  ZBase_1601(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1601');
    return other is ZBase_1601 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1601');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1601($_val)';

}
