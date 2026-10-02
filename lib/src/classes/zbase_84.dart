import 'zbase.dart';

class ZBase_84 extends ZBase {
  int _val;
  ZBase_84(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_84');
    return other is ZBase_84 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_84');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_84($_val)';

}
