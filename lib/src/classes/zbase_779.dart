import 'zbase.dart';

class ZBase_779 extends ZBase {
  int _val;
  ZBase_779(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_779');
    return other is ZBase_779 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_779');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_779($_val)';

}
