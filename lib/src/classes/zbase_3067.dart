import 'zbase.dart';

class ZBase_3067 extends ZBase {
  int _val;
  ZBase_3067(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3067');
    return other is ZBase_3067 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3067');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3067($_val)';

}
