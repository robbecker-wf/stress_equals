import 'zbase.dart';

class ZBase_883 extends ZBase {
  int _val;
  ZBase_883(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_883');
    return other is ZBase_883 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_883');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_883($_val)';

}
