import 'zbase.dart';

class ZBase_900 extends ZBase {
  int _val;
  ZBase_900(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_900');
    return other is ZBase_900 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_900');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_900($_val)';

}
