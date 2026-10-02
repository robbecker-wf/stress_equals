import 'zbase.dart';

class ZBase_796 extends ZBase {
  int _val;
  ZBase_796(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_796');
    return other is ZBase_796 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_796');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_796($_val)';

}
