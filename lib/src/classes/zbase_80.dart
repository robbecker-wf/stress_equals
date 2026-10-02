import 'zbase.dart';

class ZBase_80 extends ZBase {
  int _val;
  ZBase_80(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_80');
    return other is ZBase_80 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_80');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_80($_val)';

}
