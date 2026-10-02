import 'zbase.dart';

class ZBase_730 extends ZBase {
  int _val;
  ZBase_730(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_730');
    return other is ZBase_730 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_730');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_730($_val)';

}
