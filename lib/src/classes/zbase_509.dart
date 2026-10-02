import 'zbase.dart';

class ZBase_509 extends ZBase {
  int _val;
  ZBase_509(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_509');
    return other is ZBase_509 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_509');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_509($_val)';

}
