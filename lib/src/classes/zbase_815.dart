import 'zbase.dart';

class ZBase_815 extends ZBase {
  int _val;
  ZBase_815(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_815');
    return other is ZBase_815 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_815');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_815($_val)';

}
