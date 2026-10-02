import 'zbase.dart';

class ZBase_231 extends ZBase {
  int _val;
  ZBase_231(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_231');
    return other is ZBase_231 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_231');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_231($_val)';

}
