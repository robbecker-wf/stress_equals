import 'zbase.dart';

class ZBase_282 extends ZBase {
  int _val;
  ZBase_282(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_282');
    return other is ZBase_282 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_282');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_282($_val)';

}
