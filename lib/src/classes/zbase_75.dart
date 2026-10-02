import 'zbase.dart';

class ZBase_75 extends ZBase {
  int _val;
  ZBase_75(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_75');
    return other is ZBase_75 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_75');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_75($_val)';

}
