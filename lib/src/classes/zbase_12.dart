import 'zbase.dart';

class ZBase_12 extends ZBase {
  int _val;
  ZBase_12(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_12');
    return other is ZBase_12 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_12');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_12($_val)';

}
