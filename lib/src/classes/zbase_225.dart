import 'zbase.dart';

class ZBase_225 extends ZBase {
  int _val;
  ZBase_225(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_225');
    return other is ZBase_225 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_225');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_225($_val)';

}
