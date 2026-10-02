import 'zbase.dart';

class ZBase_643 extends ZBase {
  int _val;
  ZBase_643(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_643');
    return other is ZBase_643 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_643');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_643($_val)';

}
