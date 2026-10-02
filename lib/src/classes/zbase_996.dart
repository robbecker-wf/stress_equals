import 'zbase.dart';

class ZBase_996 extends ZBase {
  int _val;
  ZBase_996(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_996');
    return other is ZBase_996 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_996');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_996($_val)';

}
