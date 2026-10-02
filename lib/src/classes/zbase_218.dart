import 'zbase.dart';

class ZBase_218 extends ZBase {
  int _val;
  ZBase_218(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_218');
    return other is ZBase_218 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_218');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_218($_val)';

}
