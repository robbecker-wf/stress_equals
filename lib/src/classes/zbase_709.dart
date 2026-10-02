import 'zbase.dart';

class ZBase_709 extends ZBase {
  int _val;
  ZBase_709(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_709');
    return other is ZBase_709 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_709');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_709($_val)';

}
