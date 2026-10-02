import 'zbase.dart';

class ZBase_30 extends ZBase {
  int _val;
  ZBase_30(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_30');
    return other is ZBase_30 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_30');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_30($_val)';

}
