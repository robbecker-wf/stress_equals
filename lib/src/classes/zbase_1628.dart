import 'zbase.dart';

class ZBase_1628 extends ZBase {
  int _val;
  ZBase_1628(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1628');
    return other is ZBase_1628 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1628');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1628($_val)';

}
