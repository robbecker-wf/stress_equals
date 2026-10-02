import 'zbase.dart';

class ZBase_140 extends ZBase {
  int _val;
  ZBase_140(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_140');
    return other is ZBase_140 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_140');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_140($_val)';

}
