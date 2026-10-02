import 'zbase.dart';

class ZBase_708 extends ZBase {
  int _val;
  ZBase_708(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_708');
    return other is ZBase_708 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_708');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_708($_val)';

}
