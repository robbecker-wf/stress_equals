import 'zbase.dart';

class ZBase_749 extends ZBase {
  int _val;
  ZBase_749(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_749');
    return other is ZBase_749 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_749');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_749($_val)';

}
