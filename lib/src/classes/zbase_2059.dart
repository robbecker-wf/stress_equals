import 'zbase.dart';

class ZBase_2059 extends ZBase {
  int _val;
  ZBase_2059(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2059');
    return other is ZBase_2059 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2059');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2059($_val)';

}
