import 'zbase.dart';

class ZBase_1735 extends ZBase {
  int _val;
  ZBase_1735(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1735');
    return other is ZBase_1735 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1735');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1735($_val)';

}
