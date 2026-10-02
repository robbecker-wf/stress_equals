import 'zbase.dart';

class ZBase_264 extends ZBase {
  int _val;
  ZBase_264(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_264');
    return other is ZBase_264 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_264');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_264($_val)';

}
