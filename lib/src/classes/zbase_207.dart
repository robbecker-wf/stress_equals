import 'zbase.dart';

class ZBase_207 extends ZBase {
  int _val;
  ZBase_207(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_207');
    return other is ZBase_207 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_207');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_207($_val)';

}
