import 'zbase.dart';

class ZBase_206 extends ZBase {
  int _val;
  ZBase_206(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_206');
    return other is ZBase_206 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_206');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_206($_val)';

}
