import 'zbase.dart';

class ZBase_112 extends ZBase {
  int _val;
  ZBase_112(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_112');
    return other is ZBase_112 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_112');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_112($_val)';

}
