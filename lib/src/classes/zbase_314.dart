import 'zbase.dart';

class ZBase_314 extends ZBase {
  int _val;
  ZBase_314(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_314');
    return other is ZBase_314 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_314');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_314($_val)';

}
