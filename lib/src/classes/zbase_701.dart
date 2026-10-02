import 'zbase.dart';

class ZBase_701 extends ZBase {
  int _val;
  ZBase_701(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_701');
    return other is ZBase_701 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_701');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_701($_val)';

}
