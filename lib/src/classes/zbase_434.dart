import 'zbase.dart';

class ZBase_434 extends ZBase {
  int _val;
  ZBase_434(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_434');
    return other is ZBase_434 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_434');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_434($_val)';

}
