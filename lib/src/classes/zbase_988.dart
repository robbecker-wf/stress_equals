import 'zbase.dart';

class ZBase_988 extends ZBase {
  int _val;
  ZBase_988(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_988');
    return other is ZBase_988 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_988');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_988($_val)';

}
