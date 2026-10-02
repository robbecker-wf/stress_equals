import 'zbase.dart';

class ZBase_36 extends ZBase {
  int _val;
  ZBase_36(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_36');
    return other is ZBase_36 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_36');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_36($_val)';

}
