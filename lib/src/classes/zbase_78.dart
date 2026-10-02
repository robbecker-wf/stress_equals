import 'zbase.dart';

class ZBase_78 extends ZBase {
  int _val;
  ZBase_78(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_78');
    return other is ZBase_78 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_78');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_78($_val)';

}
