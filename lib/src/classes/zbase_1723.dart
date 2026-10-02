import 'zbase.dart';

class ZBase_1723 extends ZBase {
  int _val;
  ZBase_1723(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1723');
    return other is ZBase_1723 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1723');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1723($_val)';

}
