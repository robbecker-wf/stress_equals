import 'zbase.dart';

class ZBase_169 extends ZBase {
  int _val;
  ZBase_169(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_169');
    return other is ZBase_169 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_169');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_169($_val)';

}
