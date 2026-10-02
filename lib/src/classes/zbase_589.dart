import 'zbase.dart';

class ZBase_589 extends ZBase {
  int _val;
  ZBase_589(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_589');
    return other is ZBase_589 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_589');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_589($_val)';

}
