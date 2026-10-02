import 'zbase.dart';

class ZBase_328 extends ZBase {
  int _val;
  ZBase_328(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_328');
    return other is ZBase_328 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_328');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_328($_val)';

}
