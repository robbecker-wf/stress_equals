import 'zbase.dart';

class ZBase_910 extends ZBase {
  int _val;
  ZBase_910(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_910');
    return other is ZBase_910 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_910');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_910($_val)';

}
