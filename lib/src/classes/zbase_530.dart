import 'zbase.dart';

class ZBase_530 extends ZBase {
  int _val;
  ZBase_530(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_530');
    return other is ZBase_530 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_530');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_530($_val)';

}
