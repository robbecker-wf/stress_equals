import 'zbase.dart';

class ZBase_3442 extends ZBase {
  int _val;
  ZBase_3442(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3442');
    return other is ZBase_3442 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3442');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3442($_val)';

}
