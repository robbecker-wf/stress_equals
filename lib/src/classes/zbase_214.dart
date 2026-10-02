import 'zbase.dart';

class ZBase_214 extends ZBase {
  int _val;
  ZBase_214(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_214');
    return other is ZBase_214 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_214');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_214($_val)';

}
