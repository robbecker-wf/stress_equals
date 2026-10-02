import 'zbase.dart';

class ZBase_1200 extends ZBase {
  int _val;
  ZBase_1200(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1200');
    return other is ZBase_1200 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1200');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1200($_val)';

}
