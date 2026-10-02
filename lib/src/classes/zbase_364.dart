import 'zbase.dart';

class ZBase_364 extends ZBase {
  int _val;
  ZBase_364(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_364');
    return other is ZBase_364 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_364');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_364($_val)';

}
