import 'zbase.dart';

class ZBase_303 extends ZBase {
  int _val;
  ZBase_303(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_303');
    return other is ZBase_303 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_303');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_303($_val)';

}
