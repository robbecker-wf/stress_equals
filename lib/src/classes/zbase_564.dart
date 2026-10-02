import 'zbase.dart';

class ZBase_564 extends ZBase {
  int _val;
  ZBase_564(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_564');
    return other is ZBase_564 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_564');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_564($_val)';

}
