import 'zbase.dart';

class ZBase_2021 extends ZBase {
  int _val;
  ZBase_2021(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2021');
    return other is ZBase_2021 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2021');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2021($_val)';

}
