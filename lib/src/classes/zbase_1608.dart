import 'zbase.dart';

class ZBase_1608 extends ZBase {
  int _val;
  ZBase_1608(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1608');
    return other is ZBase_1608 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1608');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1608($_val)';

}
