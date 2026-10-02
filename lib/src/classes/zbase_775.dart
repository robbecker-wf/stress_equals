import 'zbase.dart';

class ZBase_775 extends ZBase {
  int _val;
  ZBase_775(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_775');
    return other is ZBase_775 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_775');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_775($_val)';

}
