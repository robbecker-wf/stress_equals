import 'zbase.dart';

class ZBase_72 extends ZBase {
  int _val;
  ZBase_72(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_72');
    return other is ZBase_72 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_72');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_72($_val)';

}
