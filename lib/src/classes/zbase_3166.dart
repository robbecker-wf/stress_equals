import 'zbase.dart';

class ZBase_3166 extends ZBase {
  int _val;
  ZBase_3166(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3166');
    return other is ZBase_3166 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3166');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3166($_val)';

}
