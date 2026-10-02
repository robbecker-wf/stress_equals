import 'zbase.dart';

class ZBase_567 extends ZBase {
  int _val;
  ZBase_567(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_567');
    return other is ZBase_567 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_567');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_567($_val)';

}
