import 'zbase.dart';

class ZBase_560 extends ZBase {
  int _val;
  ZBase_560(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_560');
    return other is ZBase_560 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_560');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_560($_val)';

}
