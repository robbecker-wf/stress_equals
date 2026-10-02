import 'zbase.dart';

class ZBase_2740 extends ZBase {
  int _val;
  ZBase_2740(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2740');
    return other is ZBase_2740 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2740');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2740($_val)';

}
