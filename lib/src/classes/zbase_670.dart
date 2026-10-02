import 'zbase.dart';

class ZBase_670 extends ZBase {
  int _val;
  ZBase_670(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_670');
    return other is ZBase_670 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_670');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_670($_val)';

}
