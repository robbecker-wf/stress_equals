import 'zbase.dart';

class ZBase_921 extends ZBase {
  int _val;
  ZBase_921(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_921');
    return other is ZBase_921 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_921');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_921($_val)';

}
