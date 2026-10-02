import 'zbase.dart';

class ZBase_2042 extends ZBase {
  int _val;
  ZBase_2042(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2042');
    return other is ZBase_2042 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2042');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2042($_val)';

}
