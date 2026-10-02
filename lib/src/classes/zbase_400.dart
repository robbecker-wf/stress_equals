import 'zbase.dart';

class ZBase_400 extends ZBase {
  int _val;
  ZBase_400(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_400');
    return other is ZBase_400 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_400');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_400($_val)';

}
