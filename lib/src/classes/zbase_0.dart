import 'zbase.dart';

class ZBase_0 extends ZBase {
  int _val;
  ZBase_0(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_0');
    return other is ZBase_0 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_0');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_0($_val)';

}
