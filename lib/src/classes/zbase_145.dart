import 'zbase.dart';

class ZBase_145 extends ZBase {
  int _val;
  ZBase_145(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_145');
    return other is ZBase_145 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_145');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_145($_val)';

}
