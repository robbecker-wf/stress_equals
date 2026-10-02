import 'zbase.dart';

class ZBase_109 extends ZBase {
  int _val;
  ZBase_109(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_109');
    return other is ZBase_109 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_109');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_109($_val)';

}
