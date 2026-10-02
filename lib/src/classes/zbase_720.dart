import 'zbase.dart';

class ZBase_720 extends ZBase {
  int _val;
  ZBase_720(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_720');
    return other is ZBase_720 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_720');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_720($_val)';

}
