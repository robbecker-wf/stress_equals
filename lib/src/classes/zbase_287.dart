import 'zbase.dart';

class ZBase_287 extends ZBase {
  int _val;
  ZBase_287(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_287');
    return other is ZBase_287 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_287');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_287($_val)';

}
