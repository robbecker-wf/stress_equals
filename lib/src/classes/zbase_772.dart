import 'zbase.dart';

class ZBase_772 extends ZBase {
  int _val;
  ZBase_772(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_772');
    return other is ZBase_772 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_772');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_772($_val)';

}
