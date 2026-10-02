import 'zbase.dart';

class ZBase_330 extends ZBase {
  int _val;
  ZBase_330(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_330');
    return other is ZBase_330 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_330');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_330($_val)';

}
