import 'zbase.dart';

class ZBase_91 extends ZBase {
  int _val;
  ZBase_91(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_91');
    return other is ZBase_91 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_91');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_91($_val)';

}
