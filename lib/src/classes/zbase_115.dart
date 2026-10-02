import 'zbase.dart';

class ZBase_115 extends ZBase {
  int _val;
  ZBase_115(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_115');
    return other is ZBase_115 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_115');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_115($_val)';

}
