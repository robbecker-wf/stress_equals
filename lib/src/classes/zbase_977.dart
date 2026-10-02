import 'zbase.dart';

class ZBase_977 extends ZBase {
  int _val;
  ZBase_977(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_977');
    return other is ZBase_977 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_977');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_977($_val)';

}
