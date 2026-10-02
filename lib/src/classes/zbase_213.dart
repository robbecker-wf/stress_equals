import 'zbase.dart';

class ZBase_213 extends ZBase {
  int _val;
  ZBase_213(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_213');
    return other is ZBase_213 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_213');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_213($_val)';

}
