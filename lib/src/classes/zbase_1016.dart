import 'zbase.dart';

class ZBase_1016 extends ZBase {
  int _val;
  ZBase_1016(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1016');
    return other is ZBase_1016 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1016');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1016($_val)';

}
