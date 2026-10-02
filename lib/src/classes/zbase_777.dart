import 'zbase.dart';

class ZBase_777 extends ZBase {
  int _val;
  ZBase_777(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_777');
    return other is ZBase_777 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_777');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_777($_val)';

}
