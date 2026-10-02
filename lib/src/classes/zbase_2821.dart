import 'zbase.dart';

class ZBase_2821 extends ZBase {
  int _val;
  ZBase_2821(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2821');
    return other is ZBase_2821 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2821');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2821($_val)';

}
