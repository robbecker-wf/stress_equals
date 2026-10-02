import 'zbase.dart';

class ZBase_196 extends ZBase {
  int _val;
  ZBase_196(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_196');
    return other is ZBase_196 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_196');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_196($_val)';

}
