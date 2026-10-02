import 'zbase.dart';

class ZBase_153 extends ZBase {
  int _val;
  ZBase_153(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_153');
    return other is ZBase_153 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_153');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_153($_val)';

}
