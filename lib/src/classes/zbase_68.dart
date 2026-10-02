import 'zbase.dart';

class ZBase_68 extends ZBase {
  int _val;
  ZBase_68(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_68');
    return other is ZBase_68 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_68');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_68($_val)';

}
