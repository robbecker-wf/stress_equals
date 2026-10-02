import 'zbase.dart';

class ZBase_195 extends ZBase {
  int _val;
  ZBase_195(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_195');
    return other is ZBase_195 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_195');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_195($_val)';

}
