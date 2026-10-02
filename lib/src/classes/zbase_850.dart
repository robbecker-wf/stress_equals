import 'zbase.dart';

class ZBase_850 extends ZBase {
  int _val;
  ZBase_850(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_850');
    return other is ZBase_850 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_850');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_850($_val)';

}
