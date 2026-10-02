import 'zbase.dart';

class ZBase_942 extends ZBase {
  int _val;
  ZBase_942(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_942');
    return other is ZBase_942 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_942');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_942($_val)';

}
