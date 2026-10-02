import 'zbase.dart';

class ZBase_499 extends ZBase {
  int _val;
  ZBase_499(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_499');
    return other is ZBase_499 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_499');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_499($_val)';

}
