import 'zbase.dart';

class ZBase_3992 extends ZBase {
  int _val;
  ZBase_3992(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3992');
    return other is ZBase_3992 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3992');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3992($_val)';

}
