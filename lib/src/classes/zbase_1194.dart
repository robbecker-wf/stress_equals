import 'zbase.dart';

class ZBase_1194 extends ZBase {
  int _val;
  ZBase_1194(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1194');
    return other is ZBase_1194 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1194');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1194($_val)';

}
