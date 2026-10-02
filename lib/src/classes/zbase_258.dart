import 'zbase.dart';

class ZBase_258 extends ZBase {
  int _val;
  ZBase_258(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_258');
    return other is ZBase_258 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_258');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_258($_val)';

}
