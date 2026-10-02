import 'zbase.dart';

class ZBase_454 extends ZBase {
  int _val;
  ZBase_454(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_454');
    return other is ZBase_454 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_454');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_454($_val)';

}
