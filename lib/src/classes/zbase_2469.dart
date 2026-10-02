import 'zbase.dart';

class ZBase_2469 extends ZBase {
  int _val;
  ZBase_2469(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2469');
    return other is ZBase_2469 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2469');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2469($_val)';

}
