import 'zbase.dart';

class ZBase_2360 extends ZBase {
  int _val;
  ZBase_2360(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2360');
    return other is ZBase_2360 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2360');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2360($_val)';

}
