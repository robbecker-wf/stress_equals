import 'zbase.dart';

class ZBase_732 extends ZBase {
  int _val;
  ZBase_732(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_732');
    return other is ZBase_732 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_732');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_732($_val)';

}
