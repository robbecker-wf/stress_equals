import 'zbase.dart';

class ZBase_18 extends ZBase {
  int _val;
  ZBase_18(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_18');
    return other is ZBase_18 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_18');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_18($_val)';

}
