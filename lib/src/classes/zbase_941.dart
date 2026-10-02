import 'zbase.dart';

class ZBase_941 extends ZBase {
  int _val;
  ZBase_941(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_941');
    return other is ZBase_941 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_941');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_941($_val)';

}
