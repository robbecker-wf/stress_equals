import 'zbase.dart';

class ZBase_373 extends ZBase {
  int _val;
  ZBase_373(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_373');
    return other is ZBase_373 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_373');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_373($_val)';

}
