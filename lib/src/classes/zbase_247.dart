import 'zbase.dart';

class ZBase_247 extends ZBase {
  int _val;
  ZBase_247(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_247');
    return other is ZBase_247 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_247');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_247($_val)';

}
