import 'zbase.dart';

class ZBase_172 extends ZBase {
  int _val;
  ZBase_172(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_172');
    return other is ZBase_172 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_172');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_172($_val)';

}
