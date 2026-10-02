import 'zbase.dart';

class ZBase_501 extends ZBase {
  int _val;
  ZBase_501(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_501');
    return other is ZBase_501 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_501');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_501($_val)';

}
