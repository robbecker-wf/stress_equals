import 'zbase.dart';

class ZBase_793 extends ZBase {
  int _val;
  ZBase_793(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_793');
    return other is ZBase_793 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_793');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_793($_val)';

}
