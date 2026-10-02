import 'zbase.dart';

class ZBase_997 extends ZBase {
  int _val;
  ZBase_997(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_997');
    return other is ZBase_997 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_997');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_997($_val)';

}
