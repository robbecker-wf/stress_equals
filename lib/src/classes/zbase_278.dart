import 'zbase.dart';

class ZBase_278 extends ZBase {
  int _val;
  ZBase_278(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_278');
    return other is ZBase_278 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_278');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_278($_val)';

}
