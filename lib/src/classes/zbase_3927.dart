import 'zbase.dart';

class ZBase_3927 extends ZBase {
  int _val;
  ZBase_3927(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3927');
    return other is ZBase_3927 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3927');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3927($_val)';

}
