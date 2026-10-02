import 'zbase.dart';

class ZBase_600 extends ZBase {
  int _val;
  ZBase_600(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_600');
    return other is ZBase_600 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_600');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_600($_val)';

}
