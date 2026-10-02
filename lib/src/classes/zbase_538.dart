import 'zbase.dart';

class ZBase_538 extends ZBase {
  int _val;
  ZBase_538(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_538');
    return other is ZBase_538 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_538');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_538($_val)';

}
