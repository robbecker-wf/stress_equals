import 'zbase.dart';

class ZBase_502 extends ZBase {
  int _val;
  ZBase_502(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_502');
    return other is ZBase_502 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_502');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_502($_val)';

}
