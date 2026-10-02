import 'zbase.dart';

class ZBase_761 extends ZBase {
  int _val;
  ZBase_761(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_761');
    return other is ZBase_761 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_761');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_761($_val)';

}
