import 'zbase.dart';

class ZBase_390 extends ZBase {
  int _val;
  ZBase_390(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_390');
    return other is ZBase_390 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_390');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_390($_val)';

}
