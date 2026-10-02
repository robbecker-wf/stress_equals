import 'zbase.dart';

class ZBase_479 extends ZBase {
  int _val;
  ZBase_479(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_479');
    return other is ZBase_479 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_479');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_479($_val)';

}
