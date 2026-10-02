import 'zbase.dart';

class ZBase_644 extends ZBase {
  int _val;
  ZBase_644(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_644');
    return other is ZBase_644 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_644');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_644($_val)';

}
