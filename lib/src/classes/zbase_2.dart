import 'zbase.dart';

class ZBase_2 extends ZBase {
  int _val;
  ZBase_2(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2');
    return other is ZBase_2 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2($_val)';

}
