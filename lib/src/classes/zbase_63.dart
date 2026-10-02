import 'zbase.dart';

class ZBase_63 extends ZBase {
  int _val;
  ZBase_63(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_63');
    return other is ZBase_63 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_63');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_63($_val)';

}
