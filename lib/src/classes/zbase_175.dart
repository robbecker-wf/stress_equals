import 'zbase.dart';

class ZBase_175 extends ZBase {
  int _val;
  ZBase_175(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_175');
    return other is ZBase_175 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_175');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_175($_val)';

}
