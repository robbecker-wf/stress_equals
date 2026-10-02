import 'zbase.dart';

class ZBase_2479 extends ZBase {
  int _val;
  ZBase_2479(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2479');
    return other is ZBase_2479 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2479');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2479($_val)';

}
