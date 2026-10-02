import 'zbase.dart';

class ZBase_1284 extends ZBase {
  int _val;
  ZBase_1284(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1284');
    return other is ZBase_1284 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1284');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1284($_val)';

}
