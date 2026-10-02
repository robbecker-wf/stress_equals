import 'zbase.dart';

class ZBase_503 extends ZBase {
  int _val;
  ZBase_503(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_503');
    return other is ZBase_503 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_503');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_503($_val)';

}
