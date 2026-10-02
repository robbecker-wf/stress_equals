import 'zbase.dart';

class ZBase_833 extends ZBase {
  int _val;
  ZBase_833(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_833');
    return other is ZBase_833 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_833');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_833($_val)';

}
