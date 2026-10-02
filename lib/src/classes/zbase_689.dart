import 'zbase.dart';

class ZBase_689 extends ZBase {
  int _val;
  ZBase_689(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_689');
    return other is ZBase_689 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_689');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_689($_val)';

}
