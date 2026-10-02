import 'zbase.dart';

class ZBase_3610 extends ZBase {
  int _val;
  ZBase_3610(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3610');
    return other is ZBase_3610 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3610');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3610($_val)';

}
