import 'zbase.dart';

class ZBase_270 extends ZBase {
  int _val;
  ZBase_270(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_270');
    return other is ZBase_270 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_270');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_270($_val)';

}
