import 'zbase.dart';

class ZBase_1679 extends ZBase {
  int _val;
  ZBase_1679(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1679');
    return other is ZBase_1679 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1679');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1679($_val)';

}
