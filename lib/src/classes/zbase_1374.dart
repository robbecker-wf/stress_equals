import 'zbase.dart';

class ZBase_1374 extends ZBase {
  int _val;
  ZBase_1374(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1374');
    return other is ZBase_1374 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1374');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1374($_val)';

}
