import 'zbase.dart';

class ZBase_972 extends ZBase {
  int _val;
  ZBase_972(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_972');
    return other is ZBase_972 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_972');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_972($_val)';

}
