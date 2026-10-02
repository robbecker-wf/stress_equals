import 'zbase.dart';

class ZBase_792 extends ZBase {
  int _val;
  ZBase_792(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_792');
    return other is ZBase_792 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_792');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_792($_val)';

}
