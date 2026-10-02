import 'zbase.dart';

class ZBase_3574 extends ZBase {
  int _val;
  ZBase_3574(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3574');
    return other is ZBase_3574 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3574');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3574($_val)';

}
