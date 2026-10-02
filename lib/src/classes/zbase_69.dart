import 'zbase.dart';

class ZBase_69 extends ZBase {
  int _val;
  ZBase_69(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_69');
    return other is ZBase_69 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_69');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_69($_val)';

}
