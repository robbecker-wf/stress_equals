import 'zbase.dart';

class ZBase_1685 extends ZBase {
  int _val;
  ZBase_1685(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1685');
    return other is ZBase_1685 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1685');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1685($_val)';

}
