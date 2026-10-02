import 'zbase.dart';

class ZBase_86 extends ZBase {
  int _val;
  ZBase_86(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_86');
    return other is ZBase_86 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_86');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_86($_val)';

}
