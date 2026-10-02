import 'zbase.dart';

class ZBase_50 extends ZBase {
  int _val;
  ZBase_50(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_50');
    return other is ZBase_50 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_50');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_50($_val)';

}
