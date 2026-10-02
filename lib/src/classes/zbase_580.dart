import 'zbase.dart';

class ZBase_580 extends ZBase {
  int _val;
  ZBase_580(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_580');
    return other is ZBase_580 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_580');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_580($_val)';

}
