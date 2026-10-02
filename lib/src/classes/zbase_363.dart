import 'zbase.dart';

class ZBase_363 extends ZBase {
  int _val;
  ZBase_363(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_363');
    return other is ZBase_363 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_363');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_363($_val)';

}
