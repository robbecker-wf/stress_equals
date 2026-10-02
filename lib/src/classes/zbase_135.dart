import 'zbase.dart';

class ZBase_135 extends ZBase {
  int _val;
  ZBase_135(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_135');
    return other is ZBase_135 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_135');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_135($_val)';

}
