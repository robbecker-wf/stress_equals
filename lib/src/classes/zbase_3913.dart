import 'zbase.dart';

class ZBase_3913 extends ZBase {
  int _val;
  ZBase_3913(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3913');
    return other is ZBase_3913 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3913');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3913($_val)';

}
