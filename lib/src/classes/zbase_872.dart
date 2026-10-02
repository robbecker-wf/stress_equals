import 'zbase.dart';

class ZBase_872 extends ZBase {
  int _val;
  ZBase_872(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_872');
    return other is ZBase_872 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_872');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_872($_val)';

}
