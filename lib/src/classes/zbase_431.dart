import 'zbase.dart';

class ZBase_431 extends ZBase {
  int _val;
  ZBase_431(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_431');
    return other is ZBase_431 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_431');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_431($_val)';

}
