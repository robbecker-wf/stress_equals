import 'zbase.dart';

class ZBase_820 extends ZBase {
  int _val;
  ZBase_820(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_820');
    return other is ZBase_820 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_820');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_820($_val)';

}
