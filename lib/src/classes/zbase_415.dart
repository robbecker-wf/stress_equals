import 'zbase.dart';

class ZBase_415 extends ZBase {
  int _val;
  ZBase_415(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_415');
    return other is ZBase_415 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_415');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_415($_val)';

}
