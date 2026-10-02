import 'zbase.dart';

class ZBase_249 extends ZBase {
  int _val;
  ZBase_249(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_249');
    return other is ZBase_249 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_249');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_249($_val)';

}
