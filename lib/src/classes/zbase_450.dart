import 'zbase.dart';

class ZBase_450 extends ZBase {
  int _val;
  ZBase_450(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_450');
    return other is ZBase_450 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_450');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_450($_val)';

}
