import 'zbase.dart';

class ZBase_714 extends ZBase {
  int _val;
  ZBase_714(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_714');
    return other is ZBase_714 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_714');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_714($_val)';

}
