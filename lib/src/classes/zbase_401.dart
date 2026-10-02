import 'zbase.dart';

class ZBase_401 extends ZBase {
  int _val;
  ZBase_401(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_401');
    return other is ZBase_401 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_401');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_401($_val)';

}
