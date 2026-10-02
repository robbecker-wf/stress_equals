import 'zbase.dart';

class ZBase_3339 extends ZBase {
  int _val;
  ZBase_3339(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3339');
    return other is ZBase_3339 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3339');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3339($_val)';

}
