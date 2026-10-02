import 'zbase.dart';

class ZBase_392 extends ZBase {
  int _val;
  ZBase_392(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_392');
    return other is ZBase_392 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_392');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_392($_val)';

}
