import 'zbase.dart';

class ZBase_546 extends ZBase {
  int _val;
  ZBase_546(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_546');
    return other is ZBase_546 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_546');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_546($_val)';

}
