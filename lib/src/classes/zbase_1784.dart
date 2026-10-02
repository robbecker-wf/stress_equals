import 'zbase.dart';

class ZBase_1784 extends ZBase {
  int _val;
  ZBase_1784(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1784');
    return other is ZBase_1784 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1784');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1784($_val)';

}
