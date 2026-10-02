import 'zbase.dart';

class ZBase_87 extends ZBase {
  int _val;
  ZBase_87(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_87');
    return other is ZBase_87 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_87');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_87($_val)';

}
