import 'zbase.dart';

class ZBase_48 extends ZBase {
  int _val;
  ZBase_48(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_48');
    return other is ZBase_48 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_48');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_48($_val)';

}
