import 'zbase.dart';

class ZBase_907 extends ZBase {
  int _val;
  ZBase_907(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_907');
    return other is ZBase_907 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_907');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_907($_val)';

}
