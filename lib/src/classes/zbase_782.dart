import 'zbase.dart';

class ZBase_782 extends ZBase {
  int _val;
  ZBase_782(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_782');
    return other is ZBase_782 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_782');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_782($_val)';

}
