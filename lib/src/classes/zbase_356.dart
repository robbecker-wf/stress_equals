import 'zbase.dart';

class ZBase_356 extends ZBase {
  int _val;
  ZBase_356(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_356');
    return other is ZBase_356 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_356');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_356($_val)';

}
