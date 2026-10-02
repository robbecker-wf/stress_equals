import 'zbase.dart';

class ZBase_757 extends ZBase {
  int _val;
  ZBase_757(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_757');
    return other is ZBase_757 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_757');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_757($_val)';

}
