import 'zbase.dart';

class ZBase_3926 extends ZBase {
  int _val;
  ZBase_3926(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3926');
    return other is ZBase_3926 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3926');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3926($_val)';

}
