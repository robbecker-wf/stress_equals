import 'zbase.dart';

class ZBase_556 extends ZBase {
  int _val;
  ZBase_556(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_556');
    return other is ZBase_556 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_556');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_556($_val)';

}
