import 'zbase.dart';

class ZBase_641 extends ZBase {
  int _val;
  ZBase_641(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_641');
    return other is ZBase_641 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_641');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_641($_val)';

}
