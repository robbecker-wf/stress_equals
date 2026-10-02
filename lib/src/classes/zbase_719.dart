import 'zbase.dart';

class ZBase_719 extends ZBase {
  int _val;
  ZBase_719(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_719');
    return other is ZBase_719 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_719');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_719($_val)';

}
