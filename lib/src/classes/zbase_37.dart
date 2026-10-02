import 'zbase.dart';

class ZBase_37 extends ZBase {
  int _val;
  ZBase_37(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_37');
    return other is ZBase_37 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_37');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_37($_val)';

}
