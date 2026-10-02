import 'zbase.dart';

class ZBase_5 extends ZBase {
  int _val;
  ZBase_5(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_5');
    return other is ZBase_5 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_5');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_5($_val)';

}
