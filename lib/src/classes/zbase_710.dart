import 'zbase.dart';

class ZBase_710 extends ZBase {
  int _val;
  ZBase_710(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_710');
    return other is ZBase_710 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_710');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_710($_val)';

}
