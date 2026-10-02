import 'zbase.dart';

class ZBase_2660 extends ZBase {
  int _val;
  ZBase_2660(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2660');
    return other is ZBase_2660 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2660');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2660($_val)';

}
