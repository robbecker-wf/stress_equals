import 'zbase.dart';

class ZBase_138 extends ZBase {
  int _val;
  ZBase_138(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_138');
    return other is ZBase_138 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_138');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_138($_val)';

}
