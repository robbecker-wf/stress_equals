import 'zbase.dart';

class ZBase_680 extends ZBase {
  int _val;
  ZBase_680(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_680');
    return other is ZBase_680 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_680');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_680($_val)';

}
