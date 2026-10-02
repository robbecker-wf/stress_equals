import 'zbase.dart';

class ZBase_464 extends ZBase {
  int _val;
  ZBase_464(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_464');
    return other is ZBase_464 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_464');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_464($_val)';

}
