import 'zbase.dart';

class ZBase_610 extends ZBase {
  int _val;
  ZBase_610(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_610');
    return other is ZBase_610 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_610');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_610($_val)';

}
