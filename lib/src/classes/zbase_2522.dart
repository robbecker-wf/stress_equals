import 'zbase.dart';

class ZBase_2522 extends ZBase {
  int _val;
  ZBase_2522(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2522');
    return other is ZBase_2522 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2522');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2522($_val)';

}
