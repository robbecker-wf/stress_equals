import 'zbase.dart';

class ZBase_752 extends ZBase {
  int _val;
  ZBase_752(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_752');
    return other is ZBase_752 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_752');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_752($_val)';

}
