import 'zbase.dart';

class ZBase_676 extends ZBase {
  int _val;
  ZBase_676(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_676');
    return other is ZBase_676 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_676');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_676($_val)';

}
