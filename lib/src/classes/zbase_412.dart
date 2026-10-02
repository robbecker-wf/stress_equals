import 'zbase.dart';

class ZBase_412 extends ZBase {
  int _val;
  ZBase_412(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_412');
    return other is ZBase_412 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_412');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_412($_val)';

}
