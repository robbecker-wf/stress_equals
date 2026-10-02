import 'zbase.dart';

class ZBase_1446 extends ZBase {
  int _val;
  ZBase_1446(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1446');
    return other is ZBase_1446 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1446');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1446($_val)';

}
