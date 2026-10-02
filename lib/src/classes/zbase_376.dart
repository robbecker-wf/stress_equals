import 'zbase.dart';

class ZBase_376 extends ZBase {
  int _val;
  ZBase_376(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_376');
    return other is ZBase_376 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_376');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_376($_val)';

}
