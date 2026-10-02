import 'zbase.dart';

class ZBase_879 extends ZBase {
  int _val;
  ZBase_879(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_879');
    return other is ZBase_879 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_879');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_879($_val)';

}
