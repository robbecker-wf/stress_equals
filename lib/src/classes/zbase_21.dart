import 'zbase.dart';

class ZBase_21 extends ZBase {
  int _val;
  ZBase_21(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_21');
    return other is ZBase_21 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_21');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_21($_val)';

}
