import 'zbase.dart';

class ZBase_816 extends ZBase {
  int _val;
  ZBase_816(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_816');
    return other is ZBase_816 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_816');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_816($_val)';

}
