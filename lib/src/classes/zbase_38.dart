import 'zbase.dart';

class ZBase_38 extends ZBase {
  int _val;
  ZBase_38(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_38');
    return other is ZBase_38 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_38');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_38($_val)';

}
