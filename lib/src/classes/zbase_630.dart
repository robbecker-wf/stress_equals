import 'zbase.dart';

class ZBase_630 extends ZBase {
  int _val;
  ZBase_630(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_630');
    return other is ZBase_630 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_630');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_630($_val)';

}
