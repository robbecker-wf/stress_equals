import 'zbase.dart';

class ZBase_26 extends ZBase {
  int _val;
  ZBase_26(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_26');
    return other is ZBase_26 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_26');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_26($_val)';

}
