import 'zbase.dart';

class ZBase_512 extends ZBase {
  int _val;
  ZBase_512(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_512');
    return other is ZBase_512 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_512');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_512($_val)';

}
