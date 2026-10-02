import 'zbase.dart';

class ZBase_934 extends ZBase {
  int _val;
  ZBase_934(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_934');
    return other is ZBase_934 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_934');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_934($_val)';

}
