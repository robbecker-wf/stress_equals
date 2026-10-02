import 'zbase.dart';

class ZBase_706 extends ZBase {
  int _val;
  ZBase_706(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_706');
    return other is ZBase_706 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_706');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_706($_val)';

}
