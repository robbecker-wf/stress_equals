import 'zbase.dart';

class ZBase_1761 extends ZBase {
  int _val;
  ZBase_1761(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1761');
    return other is ZBase_1761 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1761');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1761($_val)';

}
