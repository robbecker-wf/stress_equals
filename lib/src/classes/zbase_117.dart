import 'zbase.dart';

class ZBase_117 extends ZBase {
  int _val;
  ZBase_117(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_117');
    return other is ZBase_117 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_117');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_117($_val)';

}
