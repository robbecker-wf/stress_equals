import 'zbase.dart';

class ZBase_326 extends ZBase {
  int _val;
  ZBase_326(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_326');
    return other is ZBase_326 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_326');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_326($_val)';

}
