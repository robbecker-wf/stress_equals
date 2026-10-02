import 'zbase.dart';

class ZBase_96 extends ZBase {
  int _val;
  ZBase_96(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_96');
    return other is ZBase_96 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_96');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_96($_val)';

}
