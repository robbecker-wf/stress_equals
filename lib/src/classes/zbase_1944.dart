import 'zbase.dart';

class ZBase_1944 extends ZBase {
  int _val;
  ZBase_1944(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1944');
    return other is ZBase_1944 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1944');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1944($_val)';

}
