import 'zbase.dart';

class ZBase_179 extends ZBase {
  int _val;
  ZBase_179(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_179');
    return other is ZBase_179 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_179');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_179($_val)';

}
