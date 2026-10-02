import 'zbase.dart';

class ZBase_406 extends ZBase {
  int _val;
  ZBase_406(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_406');
    return other is ZBase_406 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_406');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_406($_val)';

}
