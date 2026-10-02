import 'zbase.dart';

class ZBase_765 extends ZBase {
  int _val;
  ZBase_765(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_765');
    return other is ZBase_765 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_765');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_765($_val)';

}
