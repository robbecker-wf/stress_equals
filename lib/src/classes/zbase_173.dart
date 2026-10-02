import 'zbase.dart';

class ZBase_173 extends ZBase {
  int _val;
  ZBase_173(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_173');
    return other is ZBase_173 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_173');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_173($_val)';

}
