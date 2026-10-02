import 'zbase.dart';

class ZBase_229 extends ZBase {
  int _val;
  ZBase_229(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_229');
    return other is ZBase_229 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_229');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_229($_val)';

}
