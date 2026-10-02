import 'zbase.dart';

class ZBase_707 extends ZBase {
  int _val;
  ZBase_707(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_707');
    return other is ZBase_707 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_707');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_707($_val)';

}
