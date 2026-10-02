import 'zbase.dart';

class ZBase_155 extends ZBase {
  int _val;
  ZBase_155(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_155');
    return other is ZBase_155 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_155');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_155($_val)';

}
