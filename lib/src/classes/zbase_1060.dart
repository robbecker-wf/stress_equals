import 'zbase.dart';

class ZBase_1060 extends ZBase {
  int _val;
  ZBase_1060(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1060');
    return other is ZBase_1060 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1060');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1060($_val)';

}
