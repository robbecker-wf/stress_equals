import 'zbase.dart';

class ZBase_1598 extends ZBase {
  int _val;
  ZBase_1598(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1598');
    return other is ZBase_1598 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1598');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1598($_val)';

}
