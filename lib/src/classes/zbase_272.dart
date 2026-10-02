import 'zbase.dart';

class ZBase_272 extends ZBase {
  int _val;
  ZBase_272(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_272');
    return other is ZBase_272 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_272');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_272($_val)';

}
