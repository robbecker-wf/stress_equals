import 'zbase.dart';

class ZBase_83 extends ZBase {
  int _val;
  ZBase_83(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_83');
    return other is ZBase_83 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_83');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_83($_val)';

}
