import 'zbase.dart';

class ZBase_143 extends ZBase {
  int _val;
  ZBase_143(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_143');
    return other is ZBase_143 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_143');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_143($_val)';

}
