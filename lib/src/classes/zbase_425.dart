import 'zbase.dart';

class ZBase_425 extends ZBase {
  int _val;
  ZBase_425(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_425');
    return other is ZBase_425 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_425');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_425($_val)';

}
