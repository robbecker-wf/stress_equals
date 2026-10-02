import 'zbase.dart';

class ZBase_413 extends ZBase {
  int _val;
  ZBase_413(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_413');
    return other is ZBase_413 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_413');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_413($_val)';

}
