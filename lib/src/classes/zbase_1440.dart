import 'zbase.dart';

class ZBase_1440 extends ZBase {
  int _val;
  ZBase_1440(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1440');
    return other is ZBase_1440 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1440');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1440($_val)';

}
