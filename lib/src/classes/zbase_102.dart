import 'zbase.dart';

class ZBase_102 extends ZBase {
  int _val;
  ZBase_102(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_102');
    return other is ZBase_102 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_102');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_102($_val)';

}
