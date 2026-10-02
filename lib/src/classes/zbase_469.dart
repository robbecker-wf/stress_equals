import 'zbase.dart';

class ZBase_469 extends ZBase {
  int _val;
  ZBase_469(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_469');
    return other is ZBase_469 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_469');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_469($_val)';

}
