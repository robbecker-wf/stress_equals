import 'zbase.dart';

class ZBase_56 extends ZBase {
  int _val;
  ZBase_56(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_56');
    return other is ZBase_56 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_56');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_56($_val)';

}
