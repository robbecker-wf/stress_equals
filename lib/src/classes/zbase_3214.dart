import 'zbase.dart';

class ZBase_3214 extends ZBase {
  int _val;
  ZBase_3214(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3214');
    return other is ZBase_3214 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3214');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3214($_val)';

}
