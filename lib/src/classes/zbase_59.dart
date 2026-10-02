import 'zbase.dart';

class ZBase_59 extends ZBase {
  int _val;
  ZBase_59(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_59');
    return other is ZBase_59 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_59');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_59($_val)';

}
