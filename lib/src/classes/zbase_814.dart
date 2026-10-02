import 'zbase.dart';

class ZBase_814 extends ZBase {
  int _val;
  ZBase_814(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_814');
    return other is ZBase_814 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_814');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_814($_val)';

}
