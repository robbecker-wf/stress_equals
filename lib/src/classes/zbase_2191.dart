import 'zbase.dart';

class ZBase_2191 extends ZBase {
  int _val;
  ZBase_2191(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2191');
    return other is ZBase_2191 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2191');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2191($_val)';

}
