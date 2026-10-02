import 'zbase.dart';

class ZBase_3846 extends ZBase {
  int _val;
  ZBase_3846(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3846');
    return other is ZBase_3846 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3846');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3846($_val)';

}
