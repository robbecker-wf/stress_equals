import 'zbase.dart';

class ZBase_985 extends ZBase {
  int _val;
  ZBase_985(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_985');
    return other is ZBase_985 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_985');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_985($_val)';

}
