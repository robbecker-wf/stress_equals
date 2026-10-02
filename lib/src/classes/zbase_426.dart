import 'zbase.dart';

class ZBase_426 extends ZBase {
  int _val;
  ZBase_426(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_426');
    return other is ZBase_426 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_426');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_426($_val)';

}
