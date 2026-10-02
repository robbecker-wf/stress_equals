import 'zbase.dart';

class ZBase_895 extends ZBase {
  int _val;
  ZBase_895(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_895');
    return other is ZBase_895 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_895');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_895($_val)';

}
