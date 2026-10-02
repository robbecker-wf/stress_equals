import 'zbase.dart';

class ZBase_89 extends ZBase {
  int _val;
  ZBase_89(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_89');
    return other is ZBase_89 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_89');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_89($_val)';

}
