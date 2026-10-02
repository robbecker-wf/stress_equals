import 'zbase.dart';

class ZBase_377 extends ZBase {
  int _val;
  ZBase_377(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_377');
    return other is ZBase_377 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_377');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_377($_val)';

}
