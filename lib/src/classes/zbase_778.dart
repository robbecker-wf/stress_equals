import 'zbase.dart';

class ZBase_778 extends ZBase {
  int _val;
  ZBase_778(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_778');
    return other is ZBase_778 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_778');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_778($_val)';

}
