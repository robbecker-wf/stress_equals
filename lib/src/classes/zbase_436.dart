import 'zbase.dart';

class ZBase_436 extends ZBase {
  int _val;
  ZBase_436(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_436');
    return other is ZBase_436 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_436');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_436($_val)';

}
