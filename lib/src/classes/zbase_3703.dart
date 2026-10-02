import 'zbase.dart';

class ZBase_3703 extends ZBase {
  int _val;
  ZBase_3703(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3703');
    return other is ZBase_3703 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3703');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3703($_val)';

}
