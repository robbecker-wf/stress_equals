import 'zbase.dart';

class ZBase_182 extends ZBase {
  int _val;
  ZBase_182(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_182');
    return other is ZBase_182 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_182');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_182($_val)';

}
