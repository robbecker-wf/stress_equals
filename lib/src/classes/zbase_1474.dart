import 'zbase.dart';

class ZBase_1474 extends ZBase {
  int _val;
  ZBase_1474(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1474');
    return other is ZBase_1474 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1474');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1474($_val)';

}
