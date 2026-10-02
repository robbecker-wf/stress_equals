import 'zbase.dart';

class ZBase_510 extends ZBase {
  int _val;
  ZBase_510(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_510');
    return other is ZBase_510 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_510');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_510($_val)';

}
