import 'zbase.dart';

class ZBase_763 extends ZBase {
  int _val;
  ZBase_763(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_763');
    return other is ZBase_763 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_763');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_763($_val)';

}
