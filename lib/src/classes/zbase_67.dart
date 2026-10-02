import 'zbase.dart';

class ZBase_67 extends ZBase {
  int _val;
  ZBase_67(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_67');
    return other is ZBase_67 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_67');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_67($_val)';

}
