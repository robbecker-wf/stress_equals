import 'zbase.dart';

class ZBase_1379 extends ZBase {
  int _val;
  ZBase_1379(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1379');
    return other is ZBase_1379 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1379');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1379($_val)';

}
