import 'zbase.dart';

class ZBase_176 extends ZBase {
  int _val;
  ZBase_176(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_176');
    return other is ZBase_176 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_176');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_176($_val)';

}
