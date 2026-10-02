import 'zbase.dart';

class ZBase_1812 extends ZBase {
  int _val;
  ZBase_1812(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1812');
    return other is ZBase_1812 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1812');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1812($_val)';

}
