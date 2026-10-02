import 'zbase.dart';

class ZBase_596 extends ZBase {
  int _val;
  ZBase_596(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_596');
    return other is ZBase_596 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_596');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_596($_val)';

}
