import 'zbase.dart';

class ZBase_395 extends ZBase {
  int _val;
  ZBase_395(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_395');
    return other is ZBase_395 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_395');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_395($_val)';

}
