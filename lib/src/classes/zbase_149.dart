import 'zbase.dart';

class ZBase_149 extends ZBase {
  int _val;
  ZBase_149(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_149');
    return other is ZBase_149 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_149');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_149($_val)';

}
