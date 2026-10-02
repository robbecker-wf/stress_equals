import 'zbase.dart';

class ZBase_973 extends ZBase {
  int _val;
  ZBase_973(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_973');
    return other is ZBase_973 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_973');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_973($_val)';

}
