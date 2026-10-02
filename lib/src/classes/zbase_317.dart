import 'zbase.dart';

class ZBase_317 extends ZBase {
  int _val;
  ZBase_317(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_317');
    return other is ZBase_317 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_317');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_317($_val)';

}
