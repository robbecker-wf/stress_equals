import 'zbase.dart';

class ZBase_760 extends ZBase {
  int _val;
  ZBase_760(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_760');
    return other is ZBase_760 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_760');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_760($_val)';

}
