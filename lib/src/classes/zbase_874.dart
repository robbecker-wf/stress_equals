import 'zbase.dart';

class ZBase_874 extends ZBase {
  int _val;
  ZBase_874(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_874');
    return other is ZBase_874 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_874');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_874($_val)';

}
