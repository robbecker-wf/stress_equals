import 'zbase.dart';

class ZBase_1244 extends ZBase {
  int _val;
  ZBase_1244(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1244');
    return other is ZBase_1244 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1244');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1244($_val)';

}
