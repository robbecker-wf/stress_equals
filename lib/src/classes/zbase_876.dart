import 'zbase.dart';

class ZBase_876 extends ZBase {
  int _val;
  ZBase_876(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_876');
    return other is ZBase_876 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_876');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_876($_val)';

}
