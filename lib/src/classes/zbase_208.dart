import 'zbase.dart';

class ZBase_208 extends ZBase {
  int _val;
  ZBase_208(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_208');
    return other is ZBase_208 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_208');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_208($_val)';

}
