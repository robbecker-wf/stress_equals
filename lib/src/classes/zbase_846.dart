import 'zbase.dart';

class ZBase_846 extends ZBase {
  int _val;
  ZBase_846(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_846');
    return other is ZBase_846 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_846');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_846($_val)';

}
