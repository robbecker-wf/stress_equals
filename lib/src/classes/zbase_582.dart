import 'zbase.dart';

class ZBase_582 extends ZBase {
  int _val;
  ZBase_582(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_582');
    return other is ZBase_582 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_582');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_582($_val)';

}
