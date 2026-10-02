import 'zbase.dart';

class ZBase_2452 extends ZBase {
  int _val;
  ZBase_2452(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2452');
    return other is ZBase_2452 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2452');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2452($_val)';

}
