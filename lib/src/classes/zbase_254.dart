import 'zbase.dart';

class ZBase_254 extends ZBase {
  int _val;
  ZBase_254(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_254');
    return other is ZBase_254 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_254');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_254($_val)';

}
