import 'zbase.dart';

class ZBase_2625 extends ZBase {
  int _val;
  ZBase_2625(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2625');
    return other is ZBase_2625 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2625');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2625($_val)';

}
