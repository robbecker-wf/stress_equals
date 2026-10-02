import 'zbase.dart';

class ZBase_448 extends ZBase {
  int _val;
  ZBase_448(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_448');
    return other is ZBase_448 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_448');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_448($_val)';

}
