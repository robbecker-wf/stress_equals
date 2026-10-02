import 'zbase.dart';

class ZBase_955 extends ZBase {
  int _val;
  ZBase_955(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_955');
    return other is ZBase_955 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_955');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_955($_val)';

}
