import 'zbase.dart';

class ZBase_505 extends ZBase {
  int _val;
  ZBase_505(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_505');
    return other is ZBase_505 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_505');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_505($_val)';

}
