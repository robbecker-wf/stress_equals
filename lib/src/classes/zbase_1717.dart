import 'zbase.dart';

class ZBase_1717 extends ZBase {
  int _val;
  ZBase_1717(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1717');
    return other is ZBase_1717 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1717');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1717($_val)';

}
