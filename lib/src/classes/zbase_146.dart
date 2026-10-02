import 'zbase.dart';

class ZBase_146 extends ZBase {
  int _val;
  ZBase_146(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_146');
    return other is ZBase_146 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_146');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_146($_val)';

}
