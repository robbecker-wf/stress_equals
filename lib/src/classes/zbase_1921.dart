import 'zbase.dart';

class ZBase_1921 extends ZBase {
  int _val;
  ZBase_1921(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1921');
    return other is ZBase_1921 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1921');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1921($_val)';

}
