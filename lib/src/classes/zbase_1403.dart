import 'zbase.dart';

class ZBase_1403 extends ZBase {
  int _val;
  ZBase_1403(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1403');
    return other is ZBase_1403 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1403');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1403($_val)';

}
