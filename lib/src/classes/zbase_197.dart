import 'zbase.dart';

class ZBase_197 extends ZBase {
  int _val;
  ZBase_197(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_197');
    return other is ZBase_197 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_197');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_197($_val)';

}
