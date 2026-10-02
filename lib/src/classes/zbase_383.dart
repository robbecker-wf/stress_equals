import 'zbase.dart';

class ZBase_383 extends ZBase {
  int _val;
  ZBase_383(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_383');
    return other is ZBase_383 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_383');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_383($_val)';

}
