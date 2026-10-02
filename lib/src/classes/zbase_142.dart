import 'zbase.dart';

class ZBase_142 extends ZBase {
  int _val;
  ZBase_142(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_142');
    return other is ZBase_142 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_142');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_142($_val)';

}
