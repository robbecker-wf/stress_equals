import 'zbase.dart';

class ZBase_931 extends ZBase {
  int _val;
  ZBase_931(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_931');
    return other is ZBase_931 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_931');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_931($_val)';

}
