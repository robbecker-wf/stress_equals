import 'zbase.dart';

class ZBase_299 extends ZBase {
  int _val;
  ZBase_299(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_299');
    return other is ZBase_299 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_299');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_299($_val)';

}
