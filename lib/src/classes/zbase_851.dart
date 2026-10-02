import 'zbase.dart';

class ZBase_851 extends ZBase {
  int _val;
  ZBase_851(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_851');
    return other is ZBase_851 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_851');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_851($_val)';

}
