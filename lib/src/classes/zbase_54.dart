import 'zbase.dart';

class ZBase_54 extends ZBase {
  int _val;
  ZBase_54(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_54');
    return other is ZBase_54 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_54');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_54($_val)';

}
