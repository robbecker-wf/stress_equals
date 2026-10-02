import 'zbase.dart';

class ZBase_1382 extends ZBase {
  int _val;
  ZBase_1382(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1382');
    return other is ZBase_1382 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1382');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1382($_val)';

}
