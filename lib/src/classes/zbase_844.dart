import 'zbase.dart';

class ZBase_844 extends ZBase {
  int _val;
  ZBase_844(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_844');
    return other is ZBase_844 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_844');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_844($_val)';

}
