import 'zbase.dart';

class ZBase_462 extends ZBase {
  int _val;
  ZBase_462(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_462');
    return other is ZBase_462 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_462');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_462($_val)';

}
