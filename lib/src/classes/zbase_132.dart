import 'zbase.dart';

class ZBase_132 extends ZBase {
  int _val;
  ZBase_132(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_132');
    return other is ZBase_132 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_132');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_132($_val)';

}
