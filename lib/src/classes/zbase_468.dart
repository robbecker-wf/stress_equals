import 'zbase.dart';

class ZBase_468 extends ZBase {
  int _val;
  ZBase_468(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_468');
    return other is ZBase_468 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_468');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_468($_val)';

}
