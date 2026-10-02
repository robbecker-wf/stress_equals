import 'zbase.dart';

class ZBase_770 extends ZBase {
  int _val;
  ZBase_770(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_770');
    return other is ZBase_770 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_770');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_770($_val)';

}
