import 'zbase.dart';

class ZBase_349 extends ZBase {
  int _val;
  ZBase_349(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_349');
    return other is ZBase_349 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_349');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_349($_val)';

}
