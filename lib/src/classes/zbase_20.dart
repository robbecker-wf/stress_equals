import 'zbase.dart';

class ZBase_20 extends ZBase {
  int _val;
  ZBase_20(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_20');
    return other is ZBase_20 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_20');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_20($_val)';

}
