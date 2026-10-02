import 'zbase.dart';

class ZBase_220 extends ZBase {
  int _val;
  ZBase_220(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_220');
    return other is ZBase_220 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_220');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_220($_val)';

}
