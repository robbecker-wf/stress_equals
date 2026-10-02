import 'zbase.dart';

class ZBase_579 extends ZBase {
  int _val;
  ZBase_579(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_579');
    return other is ZBase_579 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_579');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_579($_val)';

}
