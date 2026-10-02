import 'zbase.dart';

class ZBase_653 extends ZBase {
  int _val;
  ZBase_653(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_653');
    return other is ZBase_653 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_653');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_653($_val)';

}
