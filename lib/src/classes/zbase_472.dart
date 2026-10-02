import 'zbase.dart';

class ZBase_472 extends ZBase {
  int _val;
  ZBase_472(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_472');
    return other is ZBase_472 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_472');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_472($_val)';

}
