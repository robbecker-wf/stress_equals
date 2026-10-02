import 'zbase.dart';

class ZBase_137 extends ZBase {
  int _val;
  ZBase_137(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_137');
    return other is ZBase_137 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_137');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_137($_val)';

}
