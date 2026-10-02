import 'zbase.dart';

class ZBase_913 extends ZBase {
  int _val;
  ZBase_913(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_913');
    return other is ZBase_913 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_913');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_913($_val)';

}
