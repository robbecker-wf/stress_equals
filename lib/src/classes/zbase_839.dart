import 'zbase.dart';

class ZBase_839 extends ZBase {
  int _val;
  ZBase_839(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_839');
    return other is ZBase_839 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_839');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_839($_val)';

}
