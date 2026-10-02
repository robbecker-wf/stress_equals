import 'zbase.dart';

class ZBase_953 extends ZBase {
  int _val;
  ZBase_953(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_953');
    return other is ZBase_953 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_953');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_953($_val)';

}
