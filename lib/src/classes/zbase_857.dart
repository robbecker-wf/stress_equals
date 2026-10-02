import 'zbase.dart';

class ZBase_857 extends ZBase {
  int _val;
  ZBase_857(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_857');
    return other is ZBase_857 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_857');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_857($_val)';

}
