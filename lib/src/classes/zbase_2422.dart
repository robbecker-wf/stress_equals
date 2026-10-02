import 'zbase.dart';

class ZBase_2422 extends ZBase {
  int _val;
  ZBase_2422(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2422');
    return other is ZBase_2422 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2422');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2422($_val)';

}
