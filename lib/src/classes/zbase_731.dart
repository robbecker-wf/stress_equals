import 'zbase.dart';

class ZBase_731 extends ZBase {
  int _val;
  ZBase_731(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_731');
    return other is ZBase_731 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_731');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_731($_val)';

}
