import 'zbase.dart';

class ZBase_33 extends ZBase {
  int _val;
  ZBase_33(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_33');
    return other is ZBase_33 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_33');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_33($_val)';

}
