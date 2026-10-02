import 'zbase.dart';

class ZBase_739 extends ZBase {
  int _val;
  ZBase_739(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_739');
    return other is ZBase_739 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_739');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_739($_val)';

}
