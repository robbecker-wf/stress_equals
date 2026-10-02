import 'zbase.dart';

class ZBase_158 extends ZBase {
  int _val;
  ZBase_158(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_158');
    return other is ZBase_158 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_158');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_158($_val)';

}
