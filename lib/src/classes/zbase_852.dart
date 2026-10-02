import 'zbase.dart';

class ZBase_852 extends ZBase {
  int _val;
  ZBase_852(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_852');
    return other is ZBase_852 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_852');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_852($_val)';

}
