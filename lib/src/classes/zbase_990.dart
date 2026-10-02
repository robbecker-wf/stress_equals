import 'zbase.dart';

class ZBase_990 extends ZBase {
  int _val;
  ZBase_990(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_990');
    return other is ZBase_990 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_990');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_990($_val)';

}
