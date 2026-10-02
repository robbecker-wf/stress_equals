import 'zbase.dart';

class ZBase_193 extends ZBase {
  int _val;
  ZBase_193(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_193');
    return other is ZBase_193 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_193');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_193($_val)';

}
