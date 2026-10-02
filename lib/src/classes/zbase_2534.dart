import 'zbase.dart';

class ZBase_2534 extends ZBase {
  int _val;
  ZBase_2534(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2534');
    return other is ZBase_2534 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2534');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2534($_val)';

}
