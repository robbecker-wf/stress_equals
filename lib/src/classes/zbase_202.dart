import 'zbase.dart';

class ZBase_202 extends ZBase {
  int _val;
  ZBase_202(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_202');
    return other is ZBase_202 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_202');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_202($_val)';

}
