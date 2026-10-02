import 'zbase.dart';

class ZBase_2412 extends ZBase {
  int _val;
  ZBase_2412(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2412');
    return other is ZBase_2412 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2412');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2412($_val)';

}
