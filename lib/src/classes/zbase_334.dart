import 'zbase.dart';

class ZBase_334 extends ZBase {
  int _val;
  ZBase_334(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_334');
    return other is ZBase_334 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_334');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_334($_val)';

}
