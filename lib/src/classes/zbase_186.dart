import 'zbase.dart';

class ZBase_186 extends ZBase {
  int _val;
  ZBase_186(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_186');
    return other is ZBase_186 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_186');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_186($_val)';

}
