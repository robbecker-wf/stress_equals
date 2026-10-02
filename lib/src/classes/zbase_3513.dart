import 'zbase.dart';

class ZBase_3513 extends ZBase {
  int _val;
  ZBase_3513(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3513');
    return other is ZBase_3513 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3513');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3513($_val)';

}
