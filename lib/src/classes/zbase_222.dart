import 'zbase.dart';

class ZBase_222 extends ZBase {
  int _val;
  ZBase_222(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_222');
    return other is ZBase_222 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_222');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_222($_val)';

}
