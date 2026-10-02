import 'zbase.dart';

class ZBase_481 extends ZBase {
  int _val;
  ZBase_481(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_481');
    return other is ZBase_481 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_481');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_481($_val)';

}
