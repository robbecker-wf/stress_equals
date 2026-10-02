import 'zbase.dart';

class ZBase_625 extends ZBase {
  int _val;
  ZBase_625(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_625');
    return other is ZBase_625 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_625');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_625($_val)';

}
