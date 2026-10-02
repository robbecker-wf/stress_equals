import 'zbase.dart';

class ZBase_107 extends ZBase {
  int _val;
  ZBase_107(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_107');
    return other is ZBase_107 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_107');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_107($_val)';

}
