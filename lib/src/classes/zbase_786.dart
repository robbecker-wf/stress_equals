import 'zbase.dart';

class ZBase_786 extends ZBase {
  int _val;
  ZBase_786(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_786');
    return other is ZBase_786 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_786');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_786($_val)';

}
