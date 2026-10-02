import 'zbase.dart';

class ZBase_3716 extends ZBase {
  int _val;
  ZBase_3716(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3716');
    return other is ZBase_3716 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3716');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3716($_val)';

}
