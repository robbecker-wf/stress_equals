import 'zbase.dart';

class ZBase_781 extends ZBase {
  int _val;
  ZBase_781(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_781');
    return other is ZBase_781 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_781');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_781($_val)';

}
