import 'zbase.dart';

class ZBase_529 extends ZBase {
  int _val;
  ZBase_529(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_529');
    return other is ZBase_529 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_529');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_529($_val)';

}
