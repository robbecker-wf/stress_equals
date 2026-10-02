import 'zbase.dart';

class ZBase_396 extends ZBase {
  int _val;
  ZBase_396(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_396');
    return other is ZBase_396 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_396');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_396($_val)';

}
