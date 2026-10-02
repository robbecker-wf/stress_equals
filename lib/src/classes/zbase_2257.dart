import 'zbase.dart';

class ZBase_2257 extends ZBase {
  int _val;
  ZBase_2257(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2257');
    return other is ZBase_2257 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2257');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2257($_val)';

}
