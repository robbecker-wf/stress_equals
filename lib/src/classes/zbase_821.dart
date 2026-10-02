import 'zbase.dart';

class ZBase_821 extends ZBase {
  int _val;
  ZBase_821(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_821');
    return other is ZBase_821 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_821');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_821($_val)';

}
