import 'zbase.dart';

class ZBase_31 extends ZBase {
  int _val;
  ZBase_31(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_31');
    return other is ZBase_31 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_31');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_31($_val)';

}
