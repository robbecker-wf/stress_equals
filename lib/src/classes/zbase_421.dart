import 'zbase.dart';

class ZBase_421 extends ZBase {
  int _val;
  ZBase_421(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_421');
    return other is ZBase_421 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_421');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_421($_val)';

}
