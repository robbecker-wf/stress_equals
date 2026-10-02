import 'zbase.dart';

class ZBase_444 extends ZBase {
  int _val;
  ZBase_444(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_444');
    return other is ZBase_444 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_444');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_444($_val)';

}
