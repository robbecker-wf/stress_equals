import 'zbase.dart';

class ZBase_90 extends ZBase {
  int _val;
  ZBase_90(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_90');
    return other is ZBase_90 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_90');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_90($_val)';

}
