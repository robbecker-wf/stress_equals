import 'zbase.dart';

class ZBase_398 extends ZBase {
  int _val;
  ZBase_398(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_398');
    return other is ZBase_398 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_398');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_398($_val)';

}
