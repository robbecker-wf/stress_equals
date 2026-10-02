import 'zbase.dart';

class ZBase_905 extends ZBase {
  int _val;
  ZBase_905(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_905');
    return other is ZBase_905 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_905');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_905($_val)';

}
