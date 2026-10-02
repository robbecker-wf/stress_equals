import 'zbase.dart';

class ZBase_611 extends ZBase {
  int _val;
  ZBase_611(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_611');
    return other is ZBase_611 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_611');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_611($_val)';

}
