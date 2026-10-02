import 'zbase.dart';

class ZBase_929 extends ZBase {
  int _val;
  ZBase_929(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_929');
    return other is ZBase_929 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_929');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_929($_val)';

}
