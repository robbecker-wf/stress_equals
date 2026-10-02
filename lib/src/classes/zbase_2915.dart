import 'zbase.dart';

class ZBase_2915 extends ZBase {
  int _val;
  ZBase_2915(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2915');
    return other is ZBase_2915 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2915');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2915($_val)';

}
