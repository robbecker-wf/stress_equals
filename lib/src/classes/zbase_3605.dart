import 'zbase.dart';

class ZBase_3605 extends ZBase {
  int _val;
  ZBase_3605(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3605');
    return other is ZBase_3605 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3605');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3605($_val)';

}
