import 'zbase.dart';

class ZBase_315 extends ZBase {
  int _val;
  ZBase_315(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_315');
    return other is ZBase_315 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_315');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_315($_val)';

}
