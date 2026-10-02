import 'zbase.dart';

class ZBase_340 extends ZBase {
  int _val;
  ZBase_340(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_340');
    return other is ZBase_340 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_340');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_340($_val)';

}
