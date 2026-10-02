import 'zbase.dart';

class ZBase_424 extends ZBase {
  int _val;
  ZBase_424(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_424');
    return other is ZBase_424 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_424');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_424($_val)';

}
