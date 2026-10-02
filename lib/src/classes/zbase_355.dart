import 'zbase.dart';

class ZBase_355 extends ZBase {
  int _val;
  ZBase_355(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_355');
    return other is ZBase_355 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_355');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_355($_val)';

}
