import 'zbase.dart';

class ZBase_488 extends ZBase {
  int _val;
  ZBase_488(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_488');
    return other is ZBase_488 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_488');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_488($_val)';

}
