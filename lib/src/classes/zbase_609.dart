import 'zbase.dart';

class ZBase_609 extends ZBase {
  int _val;
  ZBase_609(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_609');
    return other is ZBase_609 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_609');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_609($_val)';

}
