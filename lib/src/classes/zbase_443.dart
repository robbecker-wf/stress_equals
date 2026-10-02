import 'zbase.dart';

class ZBase_443 extends ZBase {
  int _val;
  ZBase_443(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_443');
    return other is ZBase_443 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_443');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_443($_val)';

}
