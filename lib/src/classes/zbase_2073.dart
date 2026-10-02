import 'zbase.dart';

class ZBase_2073 extends ZBase {
  int _val;
  ZBase_2073(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2073');
    return other is ZBase_2073 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2073');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2073($_val)';

}
