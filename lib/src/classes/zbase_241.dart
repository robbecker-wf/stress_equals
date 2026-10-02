import 'zbase.dart';

class ZBase_241 extends ZBase {
  int _val;
  ZBase_241(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_241');
    return other is ZBase_241 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_241');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_241($_val)';

}
