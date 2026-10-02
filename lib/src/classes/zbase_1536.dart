import 'zbase.dart';

class ZBase_1536 extends ZBase {
  int _val;
  ZBase_1536(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1536');
    return other is ZBase_1536 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1536');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1536($_val)';

}
