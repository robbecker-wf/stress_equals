import 'zbase.dart';

class ZBase_380 extends ZBase {
  int _val;
  ZBase_380(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_380');
    return other is ZBase_380 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_380');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_380($_val)';

}
