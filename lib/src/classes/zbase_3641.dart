import 'zbase.dart';

class ZBase_3641 extends ZBase {
  int _val;
  ZBase_3641(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3641');
    return other is ZBase_3641 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3641');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3641($_val)';

}
