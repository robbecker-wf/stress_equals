import 'zbase.dart';

class ZBase_275 extends ZBase {
  int _val;
  ZBase_275(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_275');
    return other is ZBase_275 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_275');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_275($_val)';

}
