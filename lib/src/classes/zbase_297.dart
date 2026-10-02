import 'zbase.dart';

class ZBase_297 extends ZBase {
  int _val;
  ZBase_297(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_297');
    return other is ZBase_297 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_297');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_297($_val)';

}
