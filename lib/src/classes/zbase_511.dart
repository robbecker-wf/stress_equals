import 'zbase.dart';

class ZBase_511 extends ZBase {
  int _val;
  ZBase_511(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_511');
    return other is ZBase_511 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_511');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_511($_val)';

}
