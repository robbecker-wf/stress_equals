import 'zbase.dart';

class ZBase_394 extends ZBase {
  int _val;
  ZBase_394(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_394');
    return other is ZBase_394 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_394');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_394($_val)';

}
