import 'zbase.dart';

class ZBase_758 extends ZBase {
  int _val;
  ZBase_758(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_758');
    return other is ZBase_758 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_758');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_758($_val)';

}
