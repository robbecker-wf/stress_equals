import 'zbase.dart';

class ZBase_17 extends ZBase {
  int _val;
  ZBase_17(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_17');
    return other is ZBase_17 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_17');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_17($_val)';

}
