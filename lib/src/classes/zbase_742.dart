import 'zbase.dart';

class ZBase_742 extends ZBase {
  int _val;
  ZBase_742(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_742');
    return other is ZBase_742 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_742');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_742($_val)';

}
