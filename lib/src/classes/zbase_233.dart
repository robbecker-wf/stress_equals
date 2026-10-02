import 'zbase.dart';

class ZBase_233 extends ZBase {
  int _val;
  ZBase_233(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_233');
    return other is ZBase_233 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_233');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_233($_val)';

}
