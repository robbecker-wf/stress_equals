import 'zbase.dart';

class ZBase_273 extends ZBase {
  int _val;
  ZBase_273(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_273');
    return other is ZBase_273 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_273');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_273($_val)';

}
