import 'zbase.dart';

class ZBase_681 extends ZBase {
  int _val;
  ZBase_681(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_681');
    return other is ZBase_681 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_681');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_681($_val)';

}
