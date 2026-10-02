import 'zbase.dart';

class ZBase_945 extends ZBase {
  int _val;
  ZBase_945(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_945');
    return other is ZBase_945 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_945');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_945($_val)';

}
