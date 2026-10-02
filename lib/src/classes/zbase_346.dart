import 'zbase.dart';

class ZBase_346 extends ZBase {
  int _val;
  ZBase_346(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_346');
    return other is ZBase_346 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_346');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_346($_val)';

}
