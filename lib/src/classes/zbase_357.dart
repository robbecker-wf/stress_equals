import 'zbase.dart';

class ZBase_357 extends ZBase {
  int _val;
  ZBase_357(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_357');
    return other is ZBase_357 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_357');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_357($_val)';

}
