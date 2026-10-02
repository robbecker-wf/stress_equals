import 'zbase.dart';

class ZBase_57 extends ZBase {
  int _val;
  ZBase_57(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_57');
    return other is ZBase_57 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_57');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_57($_val)';

}
