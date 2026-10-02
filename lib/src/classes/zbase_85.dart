import 'zbase.dart';

class ZBase_85 extends ZBase {
  int _val;
  ZBase_85(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_85');
    return other is ZBase_85 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_85');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_85($_val)';

}
