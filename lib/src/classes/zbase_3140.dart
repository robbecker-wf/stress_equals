import 'zbase.dart';

class ZBase_3140 extends ZBase {
  int _val;
  ZBase_3140(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3140');
    return other is ZBase_3140 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3140');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3140($_val)';

}
