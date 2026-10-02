import 'zbase.dart';

class ZBase_918 extends ZBase {
  int _val;
  ZBase_918(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_918');
    return other is ZBase_918 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_918');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_918($_val)';

}
