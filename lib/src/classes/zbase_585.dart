import 'zbase.dart';

class ZBase_585 extends ZBase {
  int _val;
  ZBase_585(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_585');
    return other is ZBase_585 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_585');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_585($_val)';

}
