import 'zbase.dart';

class ZBase_956 extends ZBase {
  int _val;
  ZBase_956(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_956');
    return other is ZBase_956 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_956');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_956($_val)';

}
