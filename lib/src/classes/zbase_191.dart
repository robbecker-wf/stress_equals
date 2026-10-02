import 'zbase.dart';

class ZBase_191 extends ZBase {
  int _val;
  ZBase_191(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_191');
    return other is ZBase_191 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_191');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_191($_val)';

}
