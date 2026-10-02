import 'zbase.dart';

class ZBase_61 extends ZBase {
  int _val;
  ZBase_61(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_61');
    return other is ZBase_61 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_61');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_61($_val)';

}
