import 'zbase.dart';

class ZBase_236 extends ZBase {
  int _val;
  ZBase_236(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_236');
    return other is ZBase_236 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_236');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_236($_val)';

}
