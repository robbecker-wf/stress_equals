import 'zbase.dart';

class ZBase_262 extends ZBase {
  int _val;
  ZBase_262(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_262');
    return other is ZBase_262 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_262');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_262($_val)';

}
