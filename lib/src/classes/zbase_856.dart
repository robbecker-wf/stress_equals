import 'zbase.dart';

class ZBase_856 extends ZBase {
  int _val;
  ZBase_856(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_856');
    return other is ZBase_856 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_856');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_856($_val)';

}
