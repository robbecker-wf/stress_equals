import 'zbase.dart';

class ZBase_370 extends ZBase {
  int _val;
  ZBase_370(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_370');
    return other is ZBase_370 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_370');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_370($_val)';

}
