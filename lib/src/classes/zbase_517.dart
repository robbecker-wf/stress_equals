import 'zbase.dart';

class ZBase_517 extends ZBase {
  int _val;
  ZBase_517(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_517');
    return other is ZBase_517 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_517');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_517($_val)';

}
