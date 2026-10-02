import 'zbase.dart';

class ZBase_414 extends ZBase {
  int _val;
  ZBase_414(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_414');
    return other is ZBase_414 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_414');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_414($_val)';

}
