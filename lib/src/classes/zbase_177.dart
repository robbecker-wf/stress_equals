import 'zbase.dart';

class ZBase_177 extends ZBase {
  int _val;
  ZBase_177(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_177');
    return other is ZBase_177 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_177');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_177($_val)';

}
