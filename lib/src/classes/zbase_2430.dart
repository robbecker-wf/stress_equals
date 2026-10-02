import 'zbase.dart';

class ZBase_2430 extends ZBase {
  int _val;
  ZBase_2430(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2430');
    return other is ZBase_2430 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2430');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2430($_val)';

}
