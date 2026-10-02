import 'zbase.dart';

class ZBase_49 extends ZBase {
  int _val;
  ZBase_49(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_49');
    return other is ZBase_49 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_49');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_49($_val)';

}
