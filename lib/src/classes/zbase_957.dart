import 'zbase.dart';

class ZBase_957 extends ZBase {
  int _val;
  ZBase_957(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_957');
    return other is ZBase_957 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_957');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_957($_val)';

}
