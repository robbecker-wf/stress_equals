import 'zbase.dart';

class ZBase_160 extends ZBase {
  int _val;
  ZBase_160(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_160');
    return other is ZBase_160 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_160');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_160($_val)';

}
