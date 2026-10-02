import 'zbase.dart';

class ZBase_459 extends ZBase {
  int _val;
  ZBase_459(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_459');
    return other is ZBase_459 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_459');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_459($_val)';

}
