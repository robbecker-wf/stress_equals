import 'zbase.dart';

class ZBase_661 extends ZBase {
  int _val;
  ZBase_661(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_661');
    return other is ZBase_661 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_661');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_661($_val)';

}
