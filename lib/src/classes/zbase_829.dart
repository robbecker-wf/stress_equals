import 'zbase.dart';

class ZBase_829 extends ZBase {
  int _val;
  ZBase_829(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_829');
    return other is ZBase_829 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_829');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_829($_val)';

}
