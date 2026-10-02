import 'zbase.dart';

class ZBase_933 extends ZBase {
  int _val;
  ZBase_933(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_933');
    return other is ZBase_933 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_933');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_933($_val)';

}
