import 'zbase.dart';

class ZBase_250 extends ZBase {
  int _val;
  ZBase_250(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_250');
    return other is ZBase_250 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_250');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_250($_val)';

}
