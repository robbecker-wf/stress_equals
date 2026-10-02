import 'zbase.dart';

class ZBase_584 extends ZBase {
  int _val;
  ZBase_584(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_584');
    return other is ZBase_584 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_584');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_584($_val)';

}
