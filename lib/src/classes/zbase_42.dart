import 'zbase.dart';

class ZBase_42 extends ZBase {
  int _val;
  ZBase_42(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_42');
    return other is ZBase_42 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_42');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_42($_val)';

}
