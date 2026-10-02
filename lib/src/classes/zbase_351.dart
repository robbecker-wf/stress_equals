import 'zbase.dart';

class ZBase_351 extends ZBase {
  int _val;
  ZBase_351(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_351');
    return other is ZBase_351 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_351');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_351($_val)';

}
