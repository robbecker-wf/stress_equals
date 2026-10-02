import 'zbase.dart';

class ZBase_1930 extends ZBase {
  int _val;
  ZBase_1930(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1930');
    return other is ZBase_1930 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1930');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1930($_val)';

}
