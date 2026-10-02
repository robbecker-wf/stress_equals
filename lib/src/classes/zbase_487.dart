import 'zbase.dart';

class ZBase_487 extends ZBase {
  int _val;
  ZBase_487(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_487');
    return other is ZBase_487 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_487');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_487($_val)';

}
