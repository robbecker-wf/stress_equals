import 'zbase.dart';

class ZBase_527 extends ZBase {
  int _val;
  ZBase_527(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_527');
    return other is ZBase_527 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_527');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_527($_val)';

}
