import 'zbase.dart';

class ZBase_73 extends ZBase {
  int _val;
  ZBase_73(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_73');
    return other is ZBase_73 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_73');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_73($_val)';

}
