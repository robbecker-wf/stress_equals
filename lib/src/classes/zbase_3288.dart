import 'zbase.dart';

class ZBase_3288 extends ZBase {
  int _val;
  ZBase_3288(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3288');
    return other is ZBase_3288 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3288');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3288($_val)';

}
