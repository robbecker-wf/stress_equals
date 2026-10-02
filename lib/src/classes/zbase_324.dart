import 'zbase.dart';

class ZBase_324 extends ZBase {
  int _val;
  ZBase_324(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_324');
    return other is ZBase_324 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_324');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_324($_val)';

}
