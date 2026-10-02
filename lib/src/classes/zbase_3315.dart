import 'zbase.dart';

class ZBase_3315 extends ZBase {
  int _val;
  ZBase_3315(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3315');
    return other is ZBase_3315 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3315');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3315($_val)';

}
