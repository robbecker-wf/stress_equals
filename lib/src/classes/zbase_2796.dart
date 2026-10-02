import 'zbase.dart';

class ZBase_2796 extends ZBase {
  int _val;
  ZBase_2796(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2796');
    return other is ZBase_2796 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2796');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2796($_val)';

}
