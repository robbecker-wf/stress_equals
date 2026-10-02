import 'zbase.dart';

class ZBase_221 extends ZBase {
  int _val;
  ZBase_221(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_221');
    return other is ZBase_221 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_221');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_221($_val)';

}
