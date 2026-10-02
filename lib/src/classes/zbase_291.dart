import 'zbase.dart';

class ZBase_291 extends ZBase {
  int _val;
  ZBase_291(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_291');
    return other is ZBase_291 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_291');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_291($_val)';

}
