import 'zbase.dart';

class ZBase_170 extends ZBase {
  int _val;
  ZBase_170(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_170');
    return other is ZBase_170 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_170');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_170($_val)';

}
