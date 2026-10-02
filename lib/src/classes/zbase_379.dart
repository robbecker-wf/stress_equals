import 'zbase.dart';

class ZBase_379 extends ZBase {
  int _val;
  ZBase_379(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_379');
    return other is ZBase_379 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_379');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_379($_val)';

}
