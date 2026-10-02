import 'zbase.dart';

class ZBase_1407 extends ZBase {
  int _val;
  ZBase_1407(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1407');
    return other is ZBase_1407 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1407');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1407($_val)';

}
