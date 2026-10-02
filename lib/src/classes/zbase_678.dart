import 'zbase.dart';

class ZBase_678 extends ZBase {
  int _val;
  ZBase_678(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_678');
    return other is ZBase_678 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_678');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_678($_val)';

}
