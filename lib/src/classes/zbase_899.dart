import 'zbase.dart';

class ZBase_899 extends ZBase {
  int _val;
  ZBase_899(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_899');
    return other is ZBase_899 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_899');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_899($_val)';

}
