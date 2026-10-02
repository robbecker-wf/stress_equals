import 'zbase.dart';

class ZBase_435 extends ZBase {
  int _val;
  ZBase_435(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_435');
    return other is ZBase_435 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_435');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_435($_val)';

}
