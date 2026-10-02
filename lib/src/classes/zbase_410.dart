import 'zbase.dart';

class ZBase_410 extends ZBase {
  int _val;
  ZBase_410(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_410');
    return other is ZBase_410 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_410');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_410($_val)';

}
