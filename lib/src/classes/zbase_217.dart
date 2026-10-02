import 'zbase.dart';

class ZBase_217 extends ZBase {
  int _val;
  ZBase_217(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_217');
    return other is ZBase_217 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_217');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_217($_val)';

}
