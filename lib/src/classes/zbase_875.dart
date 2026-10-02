import 'zbase.dart';

class ZBase_875 extends ZBase {
  int _val;
  ZBase_875(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_875');
    return other is ZBase_875 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_875');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_875($_val)';

}
